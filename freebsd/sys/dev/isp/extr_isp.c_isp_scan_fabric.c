
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ ct_cmd_resp; int ct_reason; int ct_explanation; } ;
struct TYPE_11__ {TYPE_2__* snscb_ports; TYPE_1__ snscb_cthdr; } ;
typedef TYPE_3__ sns_gid_xx_rsp_t ;
typedef int ispsoftc_t ;
typedef int isp_pdb_t ;
struct TYPE_12__ {scalar_t__ state; int handle; int portid; int probational; } ;
typedef TYPE_4__ fcportdb_t ;
struct TYPE_13__ {scalar_t__ isp_loopstate; int isp_portid; int role; int isp_lasthdl; scalar_t__ isp_scanscratch; int isp_topo; } ;
typedef TYPE_5__ fcparam ;
struct TYPE_10__ {int control; int* portid; } ;


 TYPE_5__* FCPARAM (int *,int) ;
 scalar_t__ FC_PORTDB_STATE_DEAD ;
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ;
 int FC_PORTDB_TGT (int *,int,TYPE_4__*) ;
 int FC_SCRATCH_RELEASE (int *,int) ;
 int FL_ID ;
 int ISP_LOGERR ;
 int ISP_LOGWARN ;
 int ISP_LOG_SANCFG ;
 int ISP_ROLE_INITIATOR ;
 scalar_t__ IS_24XX (int *) ;
 scalar_t__ LOOP_FSCAN_DONE ;
 scalar_t__ LOOP_LSCAN_DONE ;
 void* LOOP_LTEST_DONE ;
 scalar_t__ LOOP_SCANNING_FABRIC ;
 scalar_t__ LS_ACC ;
 int MBOX_NOT_LOGGED_IN ;
 int NGENT ;
 int NPH_FL_ID ;
 int TOPO_IS_FABRIC (int ) ;
 int isp_dump_chip_portdb (int *,int) ;
 int isp_dump_portdb (int *,int) ;
 scalar_t__ isp_find_pdb_by_portid (int *,int,int,TYPE_4__**) ;
 int isp_getpdb (int *,int,int ,int *) ;
 int isp_gff_id (int *,int,int) ;
 int isp_gft_id (int *,int,int) ;
 int isp_gid_pt (int *,int) ;
 scalar_t__ isp_login_device (int *,int,int,int *,int *) ;
 int isp_mark_portdb (int *,int) ;
 int isp_pdb_add_update (int *,int,int *) ;
 int isp_prt (int *,int,char*,...) ;

__attribute__((used)) static int
isp_scan_fabric(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 fcportdb_t *lp;
 uint32_t portid;
 uint16_t nphdl;
 isp_pdb_t pdb;
 int portidx, portlim, r;
 sns_gid_xx_rsp_t *rs;

 if (fcp->isp_loopstate < LOOP_LSCAN_DONE)
  return (-1);
 if (fcp->isp_loopstate >= LOOP_FSCAN_DONE)
  return (0);

 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC fabric scan", chan);
 fcp->isp_loopstate = LOOP_SCANNING_FABRIC;
 if (!TOPO_IS_FABRIC(fcp->isp_topo)) {
  fcp->isp_loopstate = LOOP_FSCAN_DONE;
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC fabric scan done (no fabric)", chan);
  return (0);
 }

 if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC) {
abort:
  FC_SCRATCH_RELEASE(isp, chan);
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC fabric scan aborted", chan);
  return (1);
 }




 nphdl = IS_24XX(isp) ? NPH_FL_ID : FL_ID;
 r = isp_getpdb(isp, chan, nphdl, &pdb);
 if ((r & 0xffff) == MBOX_NOT_LOGGED_IN) {
  isp_dump_chip_portdb(isp, chan);
 }
 if (r) {
  fcp->isp_loopstate = LOOP_LTEST_DONE;
fail:
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d FC fabric scan done (bad)", chan);
  return (-1);
 }


 r = isp_gid_pt(isp, chan);
 if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
  goto abort;
 if (r > 0) {
  fcp->isp_loopstate = LOOP_FSCAN_DONE;
  return (-1);
 } else if (r < 0) {
  fcp->isp_loopstate = LOOP_LTEST_DONE;
  return (-1);
 }

 rs = (sns_gid_xx_rsp_t *) fcp->isp_scanscratch;
 if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
  goto abort;
 if (rs->snscb_cthdr.ct_cmd_resp != LS_ACC) {
  int level;

  if (rs->snscb_cthdr.ct_reason == 9 &&
      (rs->snscb_cthdr.ct_explanation == 0x07 ||
       rs->snscb_cthdr.ct_explanation == 0x0a)) {
   level = ISP_LOG_SANCFG;
  } else {
   level = ISP_LOGWARN;
  }
  isp_prt(isp, level, "Chan %d Fabric Nameserver rejected GID_PT"
      " (Reason=0x%x Expl=0x%x)", chan,
      rs->snscb_cthdr.ct_reason,
      rs->snscb_cthdr.ct_explanation);
  fcp->isp_loopstate = LOOP_FSCAN_DONE;
  return (-1);
 }


 for (portidx = 0; portidx < NGENT-1; portidx++) {
  if (rs->snscb_ports[portidx].control & 0x80)
   break;
 }
 if ((rs->snscb_ports[portidx].control & 0x80) == 0) {
  isp_prt(isp, ISP_LOGWARN,
      "fabric too big for scratch area: increase ISP_FC_SCRLEN");
 }
 portlim = portidx + 1;
 isp_prt(isp, ISP_LOG_SANCFG,
     "Chan %d Got %d ports back from name server", chan, portlim);


 for (portidx = 0; portidx < portlim; portidx++) {
  int npidx;

  portid =
      ((rs->snscb_ports[portidx].portid[0]) << 16) |
      ((rs->snscb_ports[portidx].portid[1]) << 8) |
      ((rs->snscb_ports[portidx].portid[2]));

  for (npidx = portidx + 1; npidx < portlim; npidx++) {
   uint32_t new_portid =
       ((rs->snscb_ports[npidx].portid[0]) << 16) |
       ((rs->snscb_ports[npidx].portid[1]) << 8) |
       ((rs->snscb_ports[npidx].portid[2]));
   if (new_portid == portid) {
    break;
   }
  }

  if (npidx < portlim) {
   rs->snscb_ports[npidx].portid[0] = 0;
   rs->snscb_ports[npidx].portid[1] = 0;
   rs->snscb_ports[npidx].portid[2] = 0;
   isp_prt(isp, ISP_LOG_SANCFG, "Chan %d removing duplicate PortID 0x%06x entry from list", chan, portid);
  }
 }
 isp_mark_portdb(isp, chan);
 for (portidx = 0; portidx < portlim; portidx++) {
  portid = ((rs->snscb_ports[portidx].portid[0]) << 16) |
    ((rs->snscb_ports[portidx].portid[1]) << 8) |
    ((rs->snscb_ports[portidx].portid[2]));
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d Checking fabric port 0x%06x", chan, portid);
  if (portid == 0) {
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port at idx %d is zero",
       chan, portidx);
   continue;
  }
  if (portid == fcp->isp_portid) {
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port 0x%06x is our", chan, portid);
   continue;
  }


  if (isp_find_pdb_by_portid(isp, chan, portid, &lp)) {
   if (!lp->probational) {
    isp_prt(isp, ISP_LOGERR,
        "Chan %d Port 0x%06x@0x%04x [%d] is not probational (0x%x)",
        chan, lp->portid, lp->handle,
        FC_PORTDB_TGT(isp, chan, lp), lp->state);
    isp_dump_portdb(isp, chan);
    goto fail;
   }

   if (lp->state == FC_PORTDB_STATE_ZOMBIE)
    goto relogin;
   r = isp_getpdb(isp, chan, lp->handle, &pdb);
   if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
    goto abort;
   if (r != 0) {
    lp->state = FC_PORTDB_STATE_DEAD;
    isp_prt(isp, ISP_LOG_SANCFG,
        "Chan %d Port 0x%06x handle 0x%x is dead (%d)",
        chan, portid, lp->handle, r);
    goto relogin;
   }

   isp_pdb_add_update(isp, chan, &pdb);
   continue;
  }

relogin:
  if ((fcp->role & ISP_ROLE_INITIATOR) == 0) {
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port 0x%06x is not logged in", chan, portid);
   continue;
  }

  r = isp_gff_id(isp, chan, portid);
  if (r == 0) {
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port 0x%06x is not an FCP target", chan, portid);
   continue;
  }
  if (r < 0)
   r = isp_gft_id(isp, chan, portid);
  if (r == 0) {
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port 0x%06x is not FCP", chan, portid);
   continue;
  }

  if (isp_login_device(isp, chan, portid, &pdb,
      &FCPARAM(isp, 0)->isp_lasthdl)) {
   if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
    goto abort;
   continue;
  }

  isp_pdb_add_update(isp, chan, &pdb);
 }

 if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
  goto abort;
 fcp->isp_loopstate = LOOP_FSCAN_DONE;
 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d FC fabric scan done", chan);
 return (0);
}
