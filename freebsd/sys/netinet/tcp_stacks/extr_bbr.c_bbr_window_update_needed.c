
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int rcv_scale; int rcv_adv; int rcv_nxt; } ;
struct TYPE_2__ {int sb_hiwat; } ;
struct socket {TYPE_1__ so_rcv; } ;
typedef int int32_t ;


 scalar_t__ SEQ_GT (int,int) ;
 int TCP_MAXWIN ;
 int min (int,int) ;

__attribute__((used)) static int
bbr_window_update_needed(struct tcpcb *tp, struct socket *so, uint32_t recwin, int32_t maxseg)
{




 uint32_t adv;
 int32_t oldwin;

 adv = min(recwin, TCP_MAXWIN << tp->rcv_scale);
 if (SEQ_GT(tp->rcv_adv, tp->rcv_nxt)) {
  oldwin = (tp->rcv_adv - tp->rcv_nxt);
  adv -= oldwin;
 } else
  oldwin = 0;





 if (oldwin >> tp->rcv_scale == (adv + oldwin) >> tp->rcv_scale)
  return (0);

 if (adv >= (2 * maxseg) &&
     (adv >= (so->so_rcv.sb_hiwat / 4) ||
     recwin <= (so->so_rcv.sb_hiwat / 8) ||
     so->so_rcv.sb_hiwat <= 8 * maxseg)) {
  return (1);
 }
 if (2 * adv >= (int32_t) so->so_rcv.sb_hiwat)
  return (1);
 return (0);
}
