
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_4__* tcb_p ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_15__ {size_t target; int nego_status; } ;
struct TYPE_14__ {int features; TYPE_4__* target; } ;
struct TYPE_11__ {int options; scalar_t__ width; scalar_t__ period; scalar_t__ offset; } ;
struct TYPE_10__ {scalar_t__ width; scalar_t__ period; scalar_t__ offset; } ;
struct TYPE_12__ {TYPE_2__ goal; TYPE_1__ current; } ;
struct TYPE_13__ {TYPE_6__* nego_cp; TYPE_3__ tinfo; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 int FE_U3EN ;
 int M_EXTENDED ;
 int M_X_PPR_REQ ;
 int M_X_SYNC_REQ ;
 int M_X_WIDE_REQ ;



 int PPR_OPT_DT ;
 int PPR_OPT_MASK ;
 int sym_print_msg (TYPE_6__*,char*,int*) ;

__attribute__((used)) static int sym_prepare_nego(hcb_p np, ccb_p cp, int nego, u_char *msgptr)
{
 tcb_p tp = &np->target[cp->target];
 int msglen = 0;





 if (!(np->features & FE_U3EN))
  tp->tinfo.goal.options = 0;



 if (tp->tinfo.goal.options & PPR_OPT_MASK)
  nego = 130;



 else if (tp->tinfo.current.width != tp->tinfo.goal.width)
  nego = 128;



 else if (tp->tinfo.current.period != tp->tinfo.goal.period ||
   tp->tinfo.current.offset != tp->tinfo.goal.offset)
  nego = 129;

 switch (nego) {
 case 129:
  msgptr[msglen++] = M_EXTENDED;
  msgptr[msglen++] = 3;
  msgptr[msglen++] = M_X_SYNC_REQ;
  msgptr[msglen++] = tp->tinfo.goal.period;
  msgptr[msglen++] = tp->tinfo.goal.offset;
  break;
 case 128:
  msgptr[msglen++] = M_EXTENDED;
  msgptr[msglen++] = 2;
  msgptr[msglen++] = M_X_WIDE_REQ;
  msgptr[msglen++] = tp->tinfo.goal.width;
  break;
 case 130:
  msgptr[msglen++] = M_EXTENDED;
  msgptr[msglen++] = 6;
  msgptr[msglen++] = M_X_PPR_REQ;
  msgptr[msglen++] = tp->tinfo.goal.period;
  msgptr[msglen++] = 0;
  msgptr[msglen++] = tp->tinfo.goal.offset;
  msgptr[msglen++] = tp->tinfo.goal.width;
  msgptr[msglen++] = tp->tinfo.goal.options & PPR_OPT_DT;
  break;
 }

 cp->nego_status = nego;

 if (nego) {
  tp->nego_cp = cp;
  if (DEBUG_FLAGS & DEBUG_NEGO) {
   sym_print_msg(cp, nego == 129 ? "sync msgout" :
       nego == 128 ? "wide msgout" :
       "ppr msgout", msgptr);
  }
 }

 return msglen;
}
