
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int ispsoftc_t ;
struct TYPE_6__ {int handle; int portid; int portname; } ;
typedef TYPE_1__ isp_pdb_t ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ port_wwn; int new_portid; int portid; int handle; } ;
typedef TYPE_2__ fcportdb_t ;
struct TYPE_8__ {scalar_t__ isp_loopstate; TYPE_2__* portdb; } ;
typedef TYPE_3__ fcparam ;


 TYPE_3__* FCPARAM (int *,int) ;
 scalar_t__ FC_PORTDB_STATE_NIL ;
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ;
 int ISP_LOGDEBUG1 ;
 int ISP_LOG_SANCFG ;
 scalar_t__ LOOP_SCANNING_LOOP ;
 int MAKE_WWN_FROM_NODE_NAME (scalar_t__,int ) ;
 int MAX_FC_TARG ;
 scalar_t__ VALID_PORT (int ) ;
 int isp_getpdb (int *,int,int ,TYPE_1__*) ;
 int isp_prt (int *,int ,char*,int,int ,int) ;

__attribute__((used)) static void
isp_fix_portids(ispsoftc_t *isp, int chan)
{
 fcparam *fcp = FCPARAM(isp, chan);
 isp_pdb_t pdb;
 uint64_t wwpn;
 int i, r;

 for (i = 0; i < MAX_FC_TARG; i++) {
  fcportdb_t *lp = &fcp->portdb[i];

  if (lp->state == FC_PORTDB_STATE_NIL ||
      lp->state == FC_PORTDB_STATE_ZOMBIE)
   continue;
  if (VALID_PORT(lp->portid))
   continue;

  r = isp_getpdb(isp, chan, lp->handle, &pdb);
  if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
   return;
  if (r != 0) {
   isp_prt(isp, ISP_LOGDEBUG1,
       "Chan %d FC Scan Loop handle %d returned %x",
       chan, lp->handle, r);
   continue;
  }

  MAKE_WWN_FROM_NODE_NAME(wwpn, pdb.portname);
  if (lp->port_wwn != wwpn)
   continue;
  lp->portid = lp->new_portid = pdb.portid;
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d Port 0x%06x@0x%04x is fixed",
      chan, pdb.portid, pdb.handle);
 }
}
