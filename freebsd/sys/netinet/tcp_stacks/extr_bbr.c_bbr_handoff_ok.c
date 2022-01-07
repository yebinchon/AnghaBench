
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_state; int t_flags; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ TCPS_CLOSED ;
 scalar_t__ TCPS_LISTEN ;
 scalar_t__ TCPS_SYN_RECEIVED ;
 scalar_t__ TCPS_SYN_SENT ;
 int TF_SACK_PERMIT ;
 scalar_t__ bbr_sack_not_required ;

__attribute__((used)) static int
bbr_handoff_ok(struct tcpcb *tp)
{
 if ((tp->t_state == TCPS_CLOSED) ||
     (tp->t_state == TCPS_LISTEN)) {

  return (0);
 }
 if ((tp->t_state == TCPS_SYN_SENT) ||
     (tp->t_state == TCPS_SYN_RECEIVED)) {




  return (EAGAIN);
 }
 if ((tp->t_flags & TF_SACK_PERMIT) || bbr_sack_not_required) {
  return (0);
 }




 return (EINVAL);
}
