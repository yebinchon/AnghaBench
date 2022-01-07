
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct uio {scalar_t__ uio_resid; struct thread* uio_td; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int sb_state; } ;
struct socket {int so_state; int so_vnet; TYPE_1__ so_rcv; } ;
struct sockaddr {int dummy; } ;
struct nbpcb {scalar_t__ nbp_state; struct socket* nbp_tso; } ;
struct mbuf {struct mbuf* m_next; } ;
typedef int auio ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int ECONNRESET ;
 int EINTR ;
 int ENOTCONN ;
 int EPIPE ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 int MSG_WAITALL ;
 int NBDEBUG (char*,...) ;
 scalar_t__ NBST_CLOSED ;
 scalar_t__ NBST_SESSION ;
 int NB_SORECEIVE_CHUNK ;
 scalar_t__ NB_SSN_KEEPALIVE ;
 scalar_t__ NB_SSN_MESSAGE ;
 int SBS_CANTRCVMORE ;
 int SMBERROR (char*) ;
 int SS_ISDISCONNECTED ;
 int SS_ISDISCONNECTING ;
 int bzero (struct uio*,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ min (int,int ) ;
 int nbssn_recvhdr (struct nbpcb*,int*,scalar_t__*,int ,struct thread*) ;
 int soreceive (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ;

__attribute__((used)) static int
nbssn_recv(struct nbpcb *nbp, struct mbuf **mpp, int *lenp,
 u_int8_t *rpcodep, struct thread *td)
{
 struct socket *so = nbp->nbp_tso;
 struct uio auio;
 struct mbuf *m, *tm, *im;
 u_int8_t rpcode;
 int len, resid;
 int error, rcvflg;

 if (so == ((void*)0))
  return ENOTCONN;

 if (mpp)
  *mpp = ((void*)0);
 m = ((void*)0);
 for(;;) {




  len = 0;
  rpcode = 0;
  error = nbssn_recvhdr(nbp, &len, &rpcode, MSG_DONTWAIT, td);
  if ((so->so_state & (SS_ISDISCONNECTING | SS_ISDISCONNECTED)) ||
      (so->so_rcv.sb_state & SBS_CANTRCVMORE)) {
   nbp->nbp_state = NBST_CLOSED;
   NBDEBUG("session closed by peer\n");
   return ECONNRESET;
  }
  if (error)
   return error;
  if (len == 0 && nbp->nbp_state != NBST_SESSION)
   break;

  if (rpcode == NB_SSN_KEEPALIVE)
   continue;
  resid = len;
  while (resid > 0) {
   tm = ((void*)0);
   rcvflg = MSG_WAITALL;
   bzero(&auio, sizeof(auio));
   auio.uio_resid = min(resid, NB_SORECEIVE_CHUNK);
   auio.uio_td = td;
   resid -= auio.uio_resid;




   do {
    rcvflg = MSG_WAITALL;
    CURVNET_SET(so->so_vnet);
    error = soreceive(so, (struct sockaddr **)((void*)0),
        &auio, &tm, (struct mbuf **)((void*)0), &rcvflg);
    CURVNET_RESTORE();
   } while (error == EWOULDBLOCK || error == EINTR ||
     error == ERESTART);
   if (error)
    goto out;

   if (auio.uio_resid > 0) {
    SMBERROR("packet is shorter than expected\n");
    error = EPIPE;
    goto out;
   }

   if (m == ((void*)0)) {
    m = tm;
   } else {




    for (im = m; im->m_next != ((void*)0); im = im->m_next)
     ;
    im->m_next = tm;
   }
  }

  if (nbp->nbp_state == NBST_SESSION &&
      rpcode == NB_SSN_MESSAGE)
   break;

  NBDEBUG("non-session packet %x\n", rpcode);
  if (m) {
   m_freem(m);
   m = ((void*)0);
  }
 }

out:
 if (error) {
  if (m)
   m_freem(m);
  return error;
 }
 if (mpp)
  *mpp = m;
 else
  m_freem(m);
 *lenp = len;
 *rpcodep = rpcode;
 return 0;
}
