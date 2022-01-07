
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_rack {int dummy; } ;
struct sockopt {scalar_t__ sopt_dir; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
typedef int int32_t ;


 int EINVAL ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ SOPT_GET ;
 scalar_t__ SOPT_SET ;
 int rack_get_sockopt (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*,struct tcp_rack*) ;
 int rack_set_sockopt (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*,struct tcp_rack*) ;

__attribute__((used)) static int
rack_ctloutput(struct socket *so, struct sockopt *sopt, struct inpcb *inp, struct tcpcb *tp)
{
 int32_t error = EINVAL;
 struct tcp_rack *rack;

 rack = (struct tcp_rack *)tp->t_fb_ptr;
 if (rack == ((void*)0)) {

  goto out;
 }
 if (sopt->sopt_dir == SOPT_SET) {
  return (rack_set_sockopt(so, sopt, inp, tp, rack));
 } else if (sopt->sopt_dir == SOPT_GET) {
  return (rack_get_sockopt(so, sopt, inp, tp, rack));
 }
out:
 INP_WUNLOCK(inp);
 return (error);
}
