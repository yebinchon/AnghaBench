
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm_opt {int dummy; } ;
struct fsm_decode {scalar_t__ nak; scalar_t__ nakend; } ;


 scalar_t__ FSM_OPTLEN ;
 scalar_t__ fsm_opt (scalar_t__,scalar_t__,struct fsm_opt const*) ;

void
fsm_nak(struct fsm_decode *dec, const struct fsm_opt *o)
{
  if (!dec)
    return;
  dec->nakend += fsm_opt(dec->nakend, FSM_OPTLEN - (dec->nakend - dec->nak), o);
}
