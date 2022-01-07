
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef TYPE_4__* tcb_p ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_22__ {scalar_t__ nego_status; } ;
struct TYPE_21__ {scalar_t__* msgin; scalar_t__ maxwide; int features; scalar_t__ maxoffs_dt; scalar_t__ maxoffs; scalar_t__ minsync_dt; scalar_t__ minsync; int* msgout; } ;
struct TYPE_18__ {scalar_t__ offset; scalar_t__ period; scalar_t__ width; scalar_t__ options; } ;
struct TYPE_17__ {scalar_t__ width; scalar_t__ offset; scalar_t__ period; } ;
struct TYPE_19__ {TYPE_2__ goal; TYPE_1__ user; } ;
struct TYPE_20__ {TYPE_3__ tinfo; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 int FE_U3EN ;
 int FE_ULTRA3 ;
 int HS_BUSY ;
 scalar_t__ HS_NEGOTIATE ;
 int HS_PRT ;
 scalar_t__ INB (int ) ;
 int M_EXTENDED ;
 scalar_t__ M_NOOP ;
 int M_X_PPR_REQ ;
 scalar_t__ NS_PPR ;
 int OUTB (int ,int ) ;
 int OUTL_DSP (int ) ;
 scalar_t__ PPR_OPT_DT ;
 scalar_t__ PPR_OPT_MASK ;
 int PRINT_ADDR (TYPE_6__*) ;
 int SCRIPTA_BA (TYPE_5__*,int ) ;
 int SCRIPTB_BA (TYPE_5__*,int ) ;
 int clrack ;
 int msg_bad ;
 int ppr_resp ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ sym_getsync (TYPE_5__*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int sym_print_msg (TYPE_6__*,char*,scalar_t__*) ;
 int sym_setpprot (TYPE_5__*,TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void sym_ppr_nego(hcb_p np, tcb_p tp, ccb_p cp)
{
 u_char chg, ofs, per, fak, dt, div, wide;
 int req = 1;




 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_msg(cp, "ppr msgin", np->msgin);
 }




 chg = 0;
 per = np->msgin[3];
 ofs = np->msgin[5];
 wide = np->msgin[6];
 dt = np->msgin[7] & PPR_OPT_DT;




 if (INB (HS_PRT) == HS_NEGOTIATE) {
  OUTB (HS_PRT, HS_BUSY);
  if (cp->nego_status && cp->nego_status != NS_PPR)
   goto reject_it;
  req = 0;
 }




 if (wide > np->maxwide)
  {chg = 1; wide = np->maxwide;}
 if (!wide || !(np->features & FE_ULTRA3))
  dt &= ~PPR_OPT_DT;
 if (req) {
  if (wide > tp->tinfo.user.width)
   {chg = 1; wide = tp->tinfo.user.width;}
 }

 if (!(np->features & FE_U3EN))
  dt &= ~PPR_OPT_DT;

 if (dt != (np->msgin[7] & PPR_OPT_MASK)) chg = 1;

 if (ofs) {
  if (dt) {
   if (ofs > np->maxoffs_dt)
    {chg = 1; ofs = np->maxoffs_dt;}
  }
  else if (ofs > np->maxoffs)
   {chg = 1; ofs = np->maxoffs;}
  if (req) {
   if (ofs > tp->tinfo.user.offset)
    {chg = 1; ofs = tp->tinfo.user.offset;}
  }
 }

 if (ofs) {
  if (dt) {
   if (per < np->minsync_dt)
    {chg = 1; per = np->minsync_dt;}
  }
  else if (per < np->minsync)
   {chg = 1; per = np->minsync;}
  if (req) {
   if (per < tp->tinfo.user.period)
    {chg = 1; per = tp->tinfo.user.period;}
  }
 }

 div = fak = 0;
 if (ofs && sym_getsync(np, dt, per, &div, &fak) < 0)
  goto reject_it;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  PRINT_ADDR(cp);
  printf ("ppr: "
   "dt=%x ofs=%d per=%d wide=%d div=%d fak=%d chg=%d.\n",
   dt, ofs, per, wide, div, fak, chg);
 }




 if (req == 0) {
  if (chg)
   goto reject_it;
  sym_setpprot (np, cp, dt, ofs, per, wide, div, fak);
  OUTL_DSP (SCRIPTA_BA (np, clrack));
  return;
 }





 sym_setpprot (np, cp, dt, ofs, per, wide, div, fak);

 np->msgout[0] = M_EXTENDED;
 np->msgout[1] = 6;
 np->msgout[2] = M_X_PPR_REQ;
 np->msgout[3] = per;
 np->msgout[4] = 0;
 np->msgout[5] = ofs;
 np->msgout[6] = wide;
 np->msgout[7] = dt;

 cp->nego_status = NS_PPR;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_msg(cp, "ppr msgout", np->msgout);
 }

 np->msgin [0] = M_NOOP;

 OUTL_DSP (SCRIPTB_BA (np, ppr_resp));
 return;
reject_it:
 sym_setpprot (np, cp, 0, 0, 0, 0, 0, 0);
 OUTL_DSP (SCRIPTB_BA (np, msg_bad));




 if (!req && !dt) {
  tp->tinfo.goal.options = 0;
  tp->tinfo.goal.width = wide;
  tp->tinfo.goal.period = per;
  tp->tinfo.goal.offset = ofs;
 }
}
