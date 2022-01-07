
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_char ;
struct thread {int td_ucred; } ;
struct tcpcb {scalar_t__ t_state; int t_flags; TYPE_1__* t_fb; scalar_t__ snd_una; scalar_t__ snd_up; void* snd_wnd; } ;
struct socket {int so_snd; } ;
struct sockaddr_in6 {int sin6_len; int sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_4__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct mbuf {scalar_t__ m_len; } ;
struct TYPE_7__ {int inc_flags; } ;
struct inpcb {int inp_vflag; int inp_flags; scalar_t__ inp_lport; TYPE_3__ inp_inc; TYPE_2__* inp_socket; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_6__ {int so_snd; int so_rcv; } ;
struct TYPE_5__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;




 int EAFNOSUPPORT ;
 int ECONNRESET ;
 int EINVAL ;
 int ENOBUFS ;
 int IN6P_IPV6_V6ONLY ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 int INC_ISIPV6 ;
 int INP_DROPPED ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int IN_MULTICAST (int ) ;
 scalar_t__ IS_FASTOPEN (int ) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ASSERT () ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int PRUS_EOF ;
 int PRUS_MORETOCOME ;
 int PRUS_NOTREADY ;
 int PRUS_OOB ;
 int PRU_SEND ;
 int PRU_SENDOOB ;
 int PRU_SEND_EOF ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_UNLOCK (int *) ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 scalar_t__ TCPS_SYN_SENT ;
 int TCP_LOG_EVENT (struct tcpcb*,int *,int *,int *,int ,int,int ,int *,int) ;
 int TCP_LOG_USERSEND ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int TF_FASTOPEN ;
 int TF_FORCEDATA ;
 int TF_MORETOCOME ;
 void* TTCP_CLIENT_SND_WND ;
 int debug__user ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int m_freem (struct mbuf*) ;
 int ntohl (int ) ;
 int prison_remote_ip4 (int ,TYPE_4__*) ;
 int prison_remote_ip6 (int ,int *) ;
 int sbappendstream (int *,struct mbuf*,int) ;
 int sbappendstream_locked (int *,struct mbuf*,int) ;
 scalar_t__ sbavail (int *) ;
 int sbspace (int *) ;
 int socantsendmore (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct tcpcb*) ;
 int stub2 (struct tcpcb*) ;
 int tcp6_connect (struct tcpcb*,struct sockaddr*,struct thread*) ;
 int tcp_connect (struct tcpcb*,struct sockaddr*,struct thread*) ;
 int tcp_fastopen_connect (struct tcpcb*) ;
 int tcp_mss (struct tcpcb*,int) ;
 int tcp_usrclosed (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_send(struct socket *so, int flags, struct mbuf *m,
    struct sockaddr *nam, struct mbuf *control, struct thread *td)
{
 struct epoch_tracker et;
 int error = 0;
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 u_int8_t incflagsav;
 u_char vflagsav;
 bool restoreflags;
 TCPDEBUG0;





 if (flags & PRUS_EOF)
  NET_EPOCH_ENTER(et);
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_usr_send: inp == NULL"));
 INP_WLOCK(inp);
 vflagsav = inp->inp_vflag;
 incflagsav = inp->inp_inc.inc_flags;
 restoreflags = 0;
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  if (control)
   m_freem(control);




  if (m && (flags & PRUS_NOTREADY) == 0)
   m_freem(m);
  error = ECONNRESET;
  goto out;
 }
 tp = intotcpcb(inp);
 TCPDEBUG1();
 if (nam != ((void*)0) && tp->t_state < TCPS_SYN_SENT) {
  switch (nam->sa_family) {
  default:
   if (m)
    m_freem(m);
   error = EAFNOSUPPORT;
   goto out;
  }
 }
 if (control) {

  if (control->m_len) {
   m_freem(control);
   if (m)
    m_freem(m);
   error = EINVAL;
   goto out;
  }
  m_freem(control);
 }
 if (!(flags & PRUS_OOB)) {
  sbappendstream(&so->so_snd, m, flags);
  if (nam && tp->t_state < TCPS_SYN_SENT) {
   if (error == 0 || inp->inp_lport != 0)
    restoreflags = 0;

   if (error)
    goto out;
   if (IS_FASTOPEN(tp->t_flags))
    tcp_fastopen_connect(tp);
   else {
    tp->snd_wnd = TTCP_CLIENT_SND_WND;
    tcp_mss(tp, -1);
   }
  }
  if (flags & PRUS_EOF) {




   NET_EPOCH_ASSERT();
   socantsendmore(so);
   tcp_usrclosed(tp);
  }
  if (!(inp->inp_flags & INP_DROPPED) &&
      !(flags & PRUS_NOTREADY)) {
   if (flags & PRUS_MORETOCOME)
    tp->t_flags |= TF_MORETOCOME;
   error = tp->t_fb->tfb_tcp_output(tp);
   if (flags & PRUS_MORETOCOME)
    tp->t_flags &= ~TF_MORETOCOME;
  }
 } else {



  SOCKBUF_LOCK(&so->so_snd);
  if (sbspace(&so->so_snd) < -512) {
   SOCKBUF_UNLOCK(&so->so_snd);
   m_freem(m);
   error = ENOBUFS;
   goto out;
  }
  sbappendstream_locked(&so->so_snd, m, flags);
  SOCKBUF_UNLOCK(&so->so_snd);
  if (nam && tp->t_state < TCPS_SYN_SENT) {
   if (IS_FASTOPEN(tp->t_flags))
    tp->t_flags &= ~TF_FASTOPEN;
   if (error == 0 || inp->inp_lport != 0)
    restoreflags = 0;

   if (error)
    goto out;
   tp->snd_wnd = TTCP_CLIENT_SND_WND;
   tcp_mss(tp, -1);
  }
  tp->snd_up = tp->snd_una + sbavail(&so->so_snd);
  if (!(flags & PRUS_NOTREADY)) {
   tp->t_flags |= TF_FORCEDATA;
   error = tp->t_fb->tfb_tcp_output(tp);
   tp->t_flags &= ~TF_FORCEDATA;
  }
 }
 TCP_LOG_EVENT(tp, ((void*)0),
     &inp->inp_socket->so_rcv,
     &inp->inp_socket->so_snd,
     TCP_LOG_USERSEND, error,
     0, ((void*)0), 0);
out:




 if (error != 0 && restoreflags) {
  inp->inp_vflag = vflagsav;
  inp->inp_inc.inc_flags = incflagsav;
 }
 TCPDEBUG2((flags & PRUS_OOB) ? PRU_SENDOOB :
    ((flags & PRUS_EOF) ? PRU_SEND_EOF : PRU_SEND));
 TCP_PROBE2(debug__user, tp, (flags & PRUS_OOB) ? PRU_SENDOOB :
     ((flags & PRUS_EOF) ? PRU_SEND_EOF : PRU_SEND));
 INP_WUNLOCK(inp);
 if (flags & PRUS_EOF)
  NET_EPOCH_EXIT(et);
 return (error);
}
