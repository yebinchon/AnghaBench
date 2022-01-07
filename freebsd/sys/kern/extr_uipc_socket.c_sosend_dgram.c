
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uio {long uio_resid; } ;
struct TYPE_9__ {int ru_msgsnd; } ;
struct thread {TYPE_2__ td_ru; } ;
struct TYPE_12__ {int sb_state; } ;
struct socket {scalar_t__ so_type; int so_options; int so_error; int so_state; TYPE_4__* so_proto; TYPE_5__ so_snd; } ;
struct sockaddr {int dummy; } ;
struct TYPE_8__ {long len; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; } ;
typedef long ssize_t ;
struct TYPE_11__ {int pr_flags; TYPE_3__* pr_usrreqs; } ;
struct TYPE_10__ {int (* pru_send ) (struct socket*,int ,struct mbuf*,struct sockaddr*,struct mbuf*,struct thread*) ;} ;


 int EDESTADDRREQ ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOTCONN ;
 int EPIPE ;
 int KASSERT (int,char*) ;
 int MSG_DONTROUTE ;
 int MSG_EOF ;
 int MSG_EOR ;
 int MSG_MORETOCOME ;
 int MSG_OOB ;
 int M_EOR ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int PRUS_EOF ;
 int PRUS_MORETOCOME ;
 int PRUS_OOB ;
 int PR_ATOMIC ;
 int PR_CONNREQUIRED ;
 int PR_IMPLOPCL ;
 int SBS_CANTSENDMORE ;
 int SOCKBUF_LOCK (TYPE_5__*) ;
 int SOCKBUF_UNLOCK (TYPE_5__*) ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SO_DONTROUTE ;
 int SS_ISCONFIRMING ;
 int SS_ISCONNECTED ;
 int VNET_SO_ASSERT (struct socket*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_uiotombuf (struct uio*,int ,long,int ,int) ;
 int max_hdr ;
 long sbspace (TYPE_5__*) ;
 int stub1 (struct socket*,int ,struct mbuf*,struct sockaddr*,struct mbuf*,struct thread*) ;

int
sosend_dgram(struct socket *so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags, struct thread *td)
{
 long space;
 ssize_t resid;
 int clen = 0, error, dontroute;

 KASSERT(so->so_type == SOCK_DGRAM, ("sosend_dgram: !SOCK_DGRAM"));
 KASSERT(so->so_proto->pr_flags & PR_ATOMIC,
     ("sosend_dgram: !PR_ATOMIC"));

 if (uio != ((void*)0))
  resid = uio->uio_resid;
 else
  resid = top->m_pkthdr.len;







 if (resid < 0) {
  error = EINVAL;
  goto out;
 }

 dontroute =
     (flags & MSG_DONTROUTE) && (so->so_options & SO_DONTROUTE) == 0;
 if (td != ((void*)0))
  td->td_ru.ru_msgsnd++;
 if (control != ((void*)0))
  clen = control->m_len;

 SOCKBUF_LOCK(&so->so_snd);
 if (so->so_snd.sb_state & SBS_CANTSENDMORE) {
  SOCKBUF_UNLOCK(&so->so_snd);
  error = EPIPE;
  goto out;
 }
 if (so->so_error) {
  error = so->so_error;
  so->so_error = 0;
  SOCKBUF_UNLOCK(&so->so_snd);
  goto out;
 }
 if ((so->so_state & SS_ISCONNECTED) == 0) {





  if ((so->so_proto->pr_flags & PR_CONNREQUIRED) &&
      (so->so_proto->pr_flags & PR_IMPLOPCL) == 0) {
   if ((so->so_state & SS_ISCONFIRMING) == 0 &&
       !(resid == 0 && clen != 0)) {
    SOCKBUF_UNLOCK(&so->so_snd);
    error = ENOTCONN;
    goto out;
   }
  } else if (addr == ((void*)0)) {
   if (so->so_proto->pr_flags & PR_CONNREQUIRED)
    error = ENOTCONN;
   else
    error = EDESTADDRREQ;
   SOCKBUF_UNLOCK(&so->so_snd);
   goto out;
  }
 }





 space = sbspace(&so->so_snd);
 if (flags & MSG_OOB)
  space += 1024;
 space -= clen;
 SOCKBUF_UNLOCK(&so->so_snd);
 if (resid > space) {
  error = EMSGSIZE;
  goto out;
 }
 if (uio == ((void*)0)) {
  resid = 0;
  if (flags & MSG_EOR)
   top->m_flags |= M_EOR;
 } else {





  top = m_uiotombuf(uio, M_WAITOK, space, max_hdr,
      (M_PKTHDR | ((flags & MSG_EOR) ? M_EOR : 0)));
  if (top == ((void*)0)) {
   error = EFAULT;
   goto out;
  }
  space -= resid - uio->uio_resid;
  resid = uio->uio_resid;
 }
 KASSERT(resid == 0, ("sosend_dgram: resid != 0"));




 if (dontroute) {
  SOCK_LOCK(so);
  so->so_options |= SO_DONTROUTE;
  SOCK_UNLOCK(so);
 }
 VNET_SO_ASSERT(so);
 error = (*so->so_proto->pr_usrreqs->pru_send)(so,
     (flags & MSG_OOB) ? PRUS_OOB :




     ((flags & MSG_EOF) &&
      (so->so_proto->pr_flags & PR_IMPLOPCL) &&
      (resid <= 0)) ?
  PRUS_EOF :

  (flags & MSG_MORETOCOME) ||
  (resid > 0 && space > 0) ? PRUS_MORETOCOME : 0,
  top, addr, control, td);
 if (dontroute) {
  SOCK_LOCK(so);
  so->so_options &= ~SO_DONTROUTE;
  SOCK_UNLOCK(so);
 }
 clen = 0;
 control = ((void*)0);
 top = ((void*)0);
out:
 if (top != ((void*)0))
  m_freem(top);
 if (control != ((void*)0))
  m_freem(control);
 return (error);
}
