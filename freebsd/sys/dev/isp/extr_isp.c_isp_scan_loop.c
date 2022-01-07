
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
typedef int ispsoftc_t ;
typedef int isp_pdb_t ;
struct TYPE_3__ {scalar_t__ isp_loopstate; scalar_t__ isp_scanscratch; int isp_topo; } ;
typedef TYPE_1__ fcparam ;


 TYPE_1__* FCPARAM (int *,int) ;
 int FL_ID ;
 scalar_t__ INI_NONE ;
 scalar_t__ ISP_CAP_2KLOGIN (int *) ;
 int ISP_FC_SCRLEN ;
 int ISP_LOGDEBUG1 ;
 int ISP_LOG_SANCFG ;
 scalar_t__ IS_2100 (int *) ;
 scalar_t__ IS_2200 (int *) ;
 int IS_24XX (int *) ;
 scalar_t__ LOOP_LSCAN_DONE ;
 scalar_t__ LOOP_LTEST_DONE ;
 scalar_t__ LOOP_SCANNING_LOOP ;
 int NPH_RESERVED ;
 int SNS_ID ;
 scalar_t__ TOPO_IS_FABRIC (int ) ;
 int isp_fix_portids (int *,int) ;
 scalar_t__ isp_get_wwn (int *,int,int ,int) ;
 int isp_gethandles (int *,int,int *,int*,int) ;
 int isp_getpdb (int *,int,int ,int *) ;
 int isp_mark_portdb (int *,int) ;
 int isp_pdb_add_update (int *,int,int *) ;
 int isp_prt (int *,int ,char*,int,...) ;

__attribute__((used)) static int
isp_scan_loop(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 int idx, lim, r;
 isp_pdb_t pdb;
 uint16_t *handles;
 uint16_t handle;

 if (fcp->isp_loopstate < LOOP_LTEST_DONE)
  return (-1);
 if (fcp->isp_loopstate >= LOOP_LSCAN_DONE)
  return (0);

 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC loop scan", chan);
 fcp->isp_loopstate = LOOP_SCANNING_LOOP;
 if (TOPO_IS_FABRIC(fcp->isp_topo)) {
  if (!IS_24XX(isp)) {
   isp_fix_portids(isp, chan);
   if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
    goto abort;
  }
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC loop scan done (no loop)", chan);
  fcp->isp_loopstate = LOOP_LSCAN_DONE;
  return (0);
 }

 handles = (uint16_t *)fcp->isp_scanscratch;
 lim = ISP_FC_SCRLEN / 2;
 r = isp_gethandles(isp, chan, handles, &lim, 1);
 if (r != 0) {
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d Getting list of handles failed with %x", chan, r);
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC loop scan done (bad)", chan);
  return (-1);
 }

 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d Got %d handles",
     chan, lim);




 isp_mark_portdb(isp, chan);
 for (idx = 0; idx < lim; idx++) {
  handle = handles[idx];




  if (ISP_CAP_2KLOGIN(isp)) {
   if (handle >= NPH_RESERVED)
    continue;
  } else {
   if (handle >= FL_ID && handle <= SNS_ID)
    continue;
  }





  if (IS_2100(isp) || IS_2200(isp)) {
   uint64_t node_wwn = isp_get_wwn(isp, chan, handle, 1);
   if (fcp->isp_loopstate < LOOP_SCANNING_LOOP) {
abort:
    isp_prt(isp, ISP_LOG_SANCFG,
        "Chan %d FC loop scan aborted", chan);
    return (1);
   }
   if (node_wwn == INI_NONE) {
    continue;
   }
  }




  r = isp_getpdb(isp, chan, handle, &pdb);
  if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
   goto abort;
  if (r != 0) {
   isp_prt(isp, ISP_LOGDEBUG1,
       "Chan %d FC Scan Loop handle %d returned %x",
       chan, handle, r);
   continue;
  }

  isp_pdb_add_update(isp, chan, &pdb);
 }
 if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
  goto abort;
 fcp->isp_loopstate = LOOP_LSCAN_DONE;
 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC loop scan done", chan);
 return (0);
}
