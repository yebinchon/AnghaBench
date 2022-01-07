
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_state; TYPE_1__* t_fb; int t_flags; struct inpcb* t_inpcb; } ;
struct socket {int so_options; scalar_t__ so_linger; int so_rcv; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int INP_DROPPED ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 scalar_t__ IS_FASTOPEN (int ) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ASSERT () ;
 int SO_LINGER ;
 scalar_t__ TCPS_ESTABLISHED ;
 scalar_t__ TCPS_LISTEN ;
 int sbflush (int *) ;
 int soisdisconnecting (struct socket*) ;
 int stub1 (struct tcpcb*) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 struct tcpcb* tcp_drop (struct tcpcb*,int ) ;
 int tcp_usrclosed (struct tcpcb*) ;

__attribute__((used)) static void
tcp_disconnect(struct tcpcb *tp)
{
 struct inpcb *inp = tp->t_inpcb;
 struct socket *so = inp->inp_socket;

 NET_EPOCH_ASSERT();
 INP_WLOCK_ASSERT(inp);





 if (tp->t_state < TCPS_ESTABLISHED &&
     !(tp->t_state > TCPS_LISTEN && IS_FASTOPEN(tp->t_flags))) {
  tp = tcp_close(tp);
  KASSERT(tp != ((void*)0),
      ("tcp_disconnect: tcp_close() returned NULL"));
 } else if ((so->so_options & SO_LINGER) && so->so_linger == 0) {
  tp = tcp_drop(tp, 0);
  KASSERT(tp != ((void*)0),
      ("tcp_disconnect: tcp_drop() returned NULL"));
 } else {
  soisdisconnecting(so);
  sbflush(&so->so_rcv);
  tcp_usrclosed(tp);
  if (!(inp->inp_flags & INP_DROPPED))
   tp->t_fb->tfb_tcp_output(tp);
 }
}
