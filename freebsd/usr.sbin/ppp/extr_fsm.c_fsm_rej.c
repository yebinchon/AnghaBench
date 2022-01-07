
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm_opt {int dummy; } ;
struct fsm_decode {scalar_t__ rej; scalar_t__ rejend; } ;


 scalar_t__ FSM_OPTLEN ;
 scalar_t__ fsm_opt (scalar_t__,scalar_t__,struct fsm_opt const*) ;

void
fsm_rej(struct fsm_decode *dec, const struct fsm_opt *o)
{
  if (!dec)
    return;
  dec->rejend += fsm_opt(dec->rejend, FSM_OPTLEN - (dec->rejend - dec->rej), o);
}
