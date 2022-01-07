
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * neg; } ;
struct ccp {int fsm; TYPE_1__ cfg; } ;
struct TYPE_4__ {size_t Neg; scalar_t__ (* Required ) (int *) ;} ;


 scalar_t__ IsEnabled (int ) ;
 unsigned int NALGORITHMS ;
 TYPE_2__** algorithm ;
 scalar_t__ stub1 (int *) ;

int
ccp_Required(struct ccp *ccp)
{
  unsigned f;

  for (f = 0; f < NALGORITHMS; f++)
    if (IsEnabled(ccp->cfg.neg[algorithm[f]->Neg]) &&
        (*algorithm[f]->Required)(&ccp->fsm))
      return 1;

  return 0;
}
