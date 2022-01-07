
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * neg; } ;
struct TYPE_4__ {scalar_t__ open_mode; } ;
struct ccp {TYPE_1__ cfg; TYPE_2__ fsm; } ;


 int CCP_NEG_TOTAL ;
 scalar_t__ IsAccepted (int ) ;
 scalar_t__ IsEnabled (int ) ;
 scalar_t__ OPEN_PASSIVE ;

int
ccp_SetOpenMode(struct ccp *ccp)
{
  int f;

  for (f = 0; f < CCP_NEG_TOTAL; f++)
    if (IsEnabled(ccp->cfg.neg[f])) {
      ccp->fsm.open_mode = 0;
      return 1;
    }

  ccp->fsm.open_mode = OPEN_PASSIVE;

  for (f = 0; f < CCP_NEG_TOTAL; f++)
    if (IsAccepted(ccp->cfg.neg[f]))
      return 1;

  return 0;
}
