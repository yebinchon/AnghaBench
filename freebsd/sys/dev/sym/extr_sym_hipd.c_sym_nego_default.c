
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_3__* tcb_p ;
typedef TYPE_4__* hcb_p ;
typedef TYPE_5__* ccb_p ;
struct TYPE_19__ {int nego_status; } ;
struct TYPE_18__ {void** msgout; void** msgin; int maxoffs; int minsync; } ;
struct TYPE_15__ {int offset; int period; int options; } ;
struct TYPE_16__ {TYPE_1__ goal; } ;
struct TYPE_17__ {TYPE_2__ tinfo; } ;


 void* M_NOOP ;



 int sym_setpprot (TYPE_4__*,TYPE_5__*,int ,int ,int ,int ,int ,int ) ;
 int sym_setsync (TYPE_4__*,TYPE_5__*,int ,int ,int ,int ) ;
 int sym_setwide (TYPE_4__*,TYPE_5__*,int ) ;

__attribute__((used)) static void sym_nego_default(hcb_p np, tcb_p tp, ccb_p cp)
{




 switch (cp->nego_status) {
 case 130:



  tp->tinfo.goal.options = 0;
  if (tp->tinfo.goal.period < np->minsync)
   tp->tinfo.goal.period = np->minsync;
  if (tp->tinfo.goal.offset > np->maxoffs)
   tp->tinfo.goal.offset = np->maxoffs;

  break;
 case 129:
  sym_setsync (np, cp, 0, 0, 0, 0);
  break;
 case 128:
  sym_setwide (np, cp, 0);
  break;
 }
 np->msgin [0] = M_NOOP;
 np->msgout[0] = M_NOOP;
 cp->nego_status = 0;
}
