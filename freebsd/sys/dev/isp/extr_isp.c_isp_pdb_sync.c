
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int ispsoftc_t ;
struct TYPE_5__ {int state; int portid; int new_portid; int new_prli_word3; int prli_word3; int new_prli_word0; int prli_word0; int handle; scalar_t__ probational; } ;
typedef TYPE_1__ fcportdb_t ;
struct TYPE_6__ {scalar_t__ isp_loopstate; TYPE_1__* portdb; } ;
typedef TYPE_2__ fcparam ;


 TYPE_2__* FCPARAM (int *,int) ;



 int FC_PORTDB_STATE_NIL ;


 int ISPASYNC_DEV_ARRIVED ;
 int ISPASYNC_DEV_CHANGED ;
 int ISPASYNC_DEV_GONE ;
 int ISPASYNC_DEV_STAYED ;
 int ISP_LOGWARN ;
 int ISP_LOG_SANCFG ;
 scalar_t__ LOOP_FSCAN_DONE ;
 scalar_t__ LOOP_READY ;
 scalar_t__ LOOP_SYNCING_PDB ;
 size_t MAX_FC_TARG ;
 int PLOGX_FLG_CMD_LOGO ;
 int PLOGX_FLG_FREE_NPHDL ;
 int PLOGX_FLG_IMPLICIT ;
 int isp_async (int *,int ,int,TYPE_1__*) ;
 int isp_dump_portdb (int *,int) ;
 int isp_plogx (int *,int,int ,int,int) ;
 int isp_prt (int *,int ,char*,int,...) ;

__attribute__((used)) static int
isp_pdb_sync(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 fcportdb_t *lp;
 uint16_t dbidx;

 if (fcp->isp_loopstate < LOOP_FSCAN_DONE)
  return (-1);
 if (fcp->isp_loopstate >= LOOP_READY)
  return (0);

 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC PDB sync", chan);

 fcp->isp_loopstate = LOOP_SYNCING_PDB;

 for (dbidx = 0; dbidx < MAX_FC_TARG; dbidx++) {
  lp = &fcp->portdb[dbidx];

  if (lp->state == FC_PORTDB_STATE_NIL)
   continue;
  if (lp->probational && lp->state != 128)
   lp->state = 131;
  switch (lp->state) {
  case 131:
   lp->state = FC_PORTDB_STATE_NIL;
   isp_async(isp, ISPASYNC_DEV_GONE, chan, lp);
   if ((lp->portid & 0xffff00) != 0) {
    (void) isp_plogx(isp, chan, lp->handle,
        lp->portid,
        PLOGX_FLG_CMD_LOGO |
        PLOGX_FLG_IMPLICIT |
        PLOGX_FLG_FREE_NPHDL);
   }




   break;
  case 130:
   lp->state = 129;
   isp_async(isp, ISPASYNC_DEV_ARRIVED, chan, lp);
   break;
  case 132:
   lp->state = 129;
   isp_async(isp, ISPASYNC_DEV_CHANGED, chan, lp);
   lp->portid = lp->new_portid;
   lp->prli_word0 = lp->new_prli_word0;
   lp->prli_word3 = lp->new_prli_word3;
   break;
  case 129:
   isp_async(isp, ISPASYNC_DEV_STAYED, chan, lp);
   break;
  case 128:
   break;
  default:
   isp_prt(isp, ISP_LOGWARN,
       "isp_pdb_sync: state %d for idx %d",
       lp->state, dbidx);
   isp_dump_portdb(isp, chan);
  }
 }

 if (fcp->isp_loopstate < LOOP_SYNCING_PDB) {
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC PDB sync aborted", chan);
  return (1);
 }

 fcp->isp_loopstate = LOOP_READY;
 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC PDB sync done", chan);
 return (0);
}
