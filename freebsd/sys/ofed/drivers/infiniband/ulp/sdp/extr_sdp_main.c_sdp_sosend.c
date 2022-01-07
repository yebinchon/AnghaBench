
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct uio {long uio_resid; } ;
struct TYPE_10__ {int ru_msgsnd; } ;
struct thread {TYPE_2__ td_ru; } ;
struct TYPE_11__ {int sb_state; long sb_lowat; } ;
struct socket {scalar_t__ so_type; int so_error; int so_state; TYPE_3__ so_snd; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {long xmit_size_goal; } ;
struct TYPE_9__ {long len; } ;
struct mbuf {int m_flags; scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;


 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOTCONN ;
 int EPIPE ;
 int EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 int MSG_EOF ;
 int MSG_EOR ;
 int MSG_NBIO ;
 int MSG_OOB ;
 int M_EOR ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int PRUS_EOF ;
 int PRUS_MORETOCOME ;
 int PRUS_OOB ;
 int SBLOCKWAIT (int) ;
 int SBS_CANTSENDMORE ;
 long SDP_HEAD_SIZE ;
 int SOCKBUF_LOCK (TYPE_3__*) ;
 int SOCKBUF_UNLOCK (TYPE_3__*) ;
 scalar_t__ SOCK_STREAM ;
 int SS_ISCONNECTED ;
 int SS_NBIO ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_uiotombuf (struct uio*,int ,int,int ,int) ;
 int min (long,long) ;
 int sblock (TYPE_3__*,int ) ;
 long sbspace (TYPE_3__*) ;
 int sbunlock (TYPE_3__*) ;
 int sbwait (TYPE_3__*) ;
 int sdp_send (struct socket*,int ,struct mbuf*,struct sockaddr*,int *,struct thread*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

__attribute__((used)) static int
sdp_sosend(struct socket *so, struct sockaddr *addr, struct uio *uio,
    struct mbuf *top, struct mbuf *control, int flags, struct thread *td)
{
 struct sdp_sock *ssk;
 long space, resid;
 int atomic;
 int error;
 int copy;

 if (uio != ((void*)0))
  resid = uio->uio_resid;
 else
  resid = top->m_pkthdr.len;
 atomic = top != ((void*)0);
 if (control != ((void*)0)) {
  if (control->m_len) {
   m_freem(control);
   if (top)
    m_freem(top);
   return (EINVAL);
  }
  m_freem(control);
  control = ((void*)0);
 }
 if (resid < 0 || (so->so_type == SOCK_STREAM && (flags & MSG_EOR))) {
  error = EINVAL;
  goto out;
 }
 if (td != ((void*)0))
  td->td_ru.ru_msgsnd++;

 ssk = sdp_sk(so);
 error = sblock(&so->so_snd, SBLOCKWAIT(flags));
 if (error)
  goto out;

restart:
 do {
  SOCKBUF_LOCK(&so->so_snd);
  if (so->so_snd.sb_state & SBS_CANTSENDMORE) {
   SOCKBUF_UNLOCK(&so->so_snd);
   error = EPIPE;
   goto release;
  }
  if (so->so_error) {
   error = so->so_error;
   so->so_error = 0;
   SOCKBUF_UNLOCK(&so->so_snd);
   goto release;
  }
  if ((so->so_state & SS_ISCONNECTED) == 0 && addr == ((void*)0)) {
   SOCKBUF_UNLOCK(&so->so_snd);
   error = ENOTCONN;
   goto release;
  }
  space = sbspace(&so->so_snd);
  if (flags & MSG_OOB)
   space += 1024;
  if (atomic && resid > ssk->xmit_size_goal - SDP_HEAD_SIZE) {
   SOCKBUF_UNLOCK(&so->so_snd);
   error = EMSGSIZE;
   goto release;
  }
  if (space < resid &&
      (atomic || space < so->so_snd.sb_lowat)) {
   if ((so->so_state & SS_NBIO) ||
       (flags & (MSG_NBIO | MSG_DONTWAIT)) != 0) {
    SOCKBUF_UNLOCK(&so->so_snd);
    error = EWOULDBLOCK;
    goto release;
   }
   error = sbwait(&so->so_snd);
   SOCKBUF_UNLOCK(&so->so_snd);
   if (error)
    goto release;
   goto restart;
  }
  SOCKBUF_UNLOCK(&so->so_snd);
  do {
   if (uio == ((void*)0)) {
    resid = 0;
    if (flags & MSG_EOR)
     top->m_flags |= M_EOR;
   } else {





    copy = min(space,
        ssk->xmit_size_goal - SDP_HEAD_SIZE);
    top = m_uiotombuf(uio, M_WAITOK, copy,
        0, M_PKTHDR |
        ((flags & MSG_EOR) ? M_EOR : 0));
    if (top == ((void*)0)) {

     error = EFAULT;
     goto release;
    }
    space -= resid - uio->uio_resid;
    resid = uio->uio_resid;
   }





   error = sdp_send(so, (flags & MSG_OOB) ? PRUS_OOB :




       ((flags & MSG_EOF) && (resid <= 0)) ? PRUS_EOF :

       (resid > 0 && space > 0) ? PRUS_MORETOCOME : 0,
       top, addr, ((void*)0), td);
   top = ((void*)0);
   if (error)
    goto release;
  } while (resid && space > 0);
 } while (resid);

release:
 sbunlock(&so->so_snd);
out:
 if (top != ((void*)0))
  m_freem(top);
 return (error);
}
