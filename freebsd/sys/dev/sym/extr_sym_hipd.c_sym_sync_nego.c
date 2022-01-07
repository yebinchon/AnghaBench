
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef TYPE_3__* tcb_p ;
typedef TYPE_4__* hcb_p ;
typedef TYPE_5__* ccb_p ;
struct TYPE_20__ {scalar_t__ nego_status; } ;
struct TYPE_19__ {scalar_t__* msgin; scalar_t__ maxoffs; scalar_t__ minsync; int* msgout; } ;
struct TYPE_16__ {scalar_t__ offset; scalar_t__ period; } ;
struct TYPE_17__ {TYPE_1__ user; } ;
struct TYPE_18__ {TYPE_2__ tinfo; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 int HS_BUSY ;
 scalar_t__ HS_NEGOTIATE ;
 int HS_PRT ;
 scalar_t__ INB (int ) ;
 int M_EXTENDED ;
 scalar_t__ M_NOOP ;
 int M_X_SYNC_REQ ;
 scalar_t__ NS_SYNC ;
 int OUTB (int ,int ) ;
 int OUTL_DSP (int ) ;
 int PRINT_ADDR (TYPE_5__*) ;
 int SCRIPTA_BA (TYPE_4__*,int ) ;
 int SCRIPTB_BA (TYPE_4__*,int ) ;
 int clrack ;
 int msg_bad ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int sdtr_resp ;
 scalar_t__ sym_getsync (TYPE_4__*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int sym_print_msg (TYPE_5__*,char*,scalar_t__*) ;
 int sym_setsync (TYPE_4__*,TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sym_sync_nego(hcb_p np, tcb_p tp, ccb_p cp)
{
 u_char chg, ofs, per, fak, div;
 int req = 1;




 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_msg(cp, "sync msgin", np->msgin);
 }




 if (INB (HS_PRT) == HS_NEGOTIATE) {
  OUTB (HS_PRT, HS_BUSY);
  if (cp->nego_status && cp->nego_status != NS_SYNC)
   goto reject_it;
  req = 0;
 }




 chg = 0;
 per = np->msgin[3];
 ofs = np->msgin[4];




 if (ofs) {
  if (ofs > np->maxoffs)
   {chg = 1; ofs = np->maxoffs;}
  if (req) {
   if (ofs > tp->tinfo.user.offset)
    {chg = 1; ofs = tp->tinfo.user.offset;}
  }
 }

 if (ofs) {
  if (per < np->minsync)
   {chg = 1; per = np->minsync;}
  if (req) {
   if (per < tp->tinfo.user.period)
    {chg = 1; per = tp->tinfo.user.period;}
  }
 }

 div = fak = 0;
 if (ofs && sym_getsync(np, 0, per, &div, &fak) < 0)
  goto reject_it;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  PRINT_ADDR(cp);
  printf ("sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\n",
   ofs, per, div, fak, chg);
 }




 if (req == 0) {
  if (chg)
   goto reject_it;
  sym_setsync (np, cp, ofs, per, div, fak);
  OUTL_DSP (SCRIPTA_BA (np, clrack));
  return;
 }





 sym_setsync (np, cp, ofs, per, div, fak);

 np->msgout[0] = M_EXTENDED;
 np->msgout[1] = 3;
 np->msgout[2] = M_X_SYNC_REQ;
 np->msgout[3] = per;
 np->msgout[4] = ofs;

 cp->nego_status = NS_SYNC;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_msg(cp, "sync msgout", np->msgout);
 }

 np->msgin [0] = M_NOOP;

 OUTL_DSP (SCRIPTB_BA (np, sdtr_resp));
 return;
reject_it:
 sym_setsync (np, cp, 0, 0, 0, 0);
 OUTL_DSP (SCRIPTB_BA (np, msg_bad));
}
