
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int ispsoftc_t ;
struct TYPE_8__ {scalar_t__ portid; scalar_t__ handle; scalar_t__ prli_word3; int prli_word0; int portname; int nodename; } ;
typedef TYPE_1__ isp_pdb_t ;
struct TYPE_9__ {scalar_t__ portid; scalar_t__ handle; scalar_t__ state; scalar_t__ prli_word3; int prli_word0; scalar_t__ new_portid; int new_prli_word0; scalar_t__ new_prli_word3; void* node_wwn; void* port_wwn; scalar_t__ probational; } ;
typedef TYPE_2__ fcportdb_t ;


 scalar_t__ FC_PORTDB_STATE_CHANGED ;
 scalar_t__ FC_PORTDB_STATE_NEW ;
 scalar_t__ FC_PORTDB_STATE_VALID ;
 int FC_PORTDB_TGT (int *,int,TYPE_2__*) ;
 int ISP_LOGERR ;
 int ISP_LOG_SANCFG ;
 int ISP_MEMZERO (TYPE_2__*,int) ;
 int MAKE_WWN_FROM_NODE_NAME (void*,int ) ;
 int PRLI_WD0_EST_IMAGE_PAIR ;
 int isp_dump_portdb (int *,int) ;
 scalar_t__ isp_find_pdb_by_wwpn (int *,int,void*,TYPE_2__**) ;
 int isp_find_pdb_empty (int *,int,TYPE_2__**) ;
 int isp_prt (int *,int ,char*,int,...) ;

__attribute__((used)) static void
isp_pdb_add_update(ispsoftc_t *isp, int chan, isp_pdb_t *pdb)
{
 fcportdb_t *lp;
 uint64_t wwnn, wwpn;

 MAKE_WWN_FROM_NODE_NAME(wwnn, pdb->nodename);
 MAKE_WWN_FROM_NODE_NAME(wwpn, pdb->portname);


 if (isp_find_pdb_by_wwpn(isp, chan, wwpn, &lp)) {
  if (!lp->probational) {
   isp_prt(isp, ISP_LOGERR,
       "Chan %d Port 0x%06x@0x%04x [%d] is not probational (0x%x)",
       chan, lp->portid, lp->handle,
       FC_PORTDB_TGT(isp, chan, lp), lp->state);
   isp_dump_portdb(isp, chan);
   return;
  }
  lp->probational = 0;
  lp->node_wwn = wwnn;


  if (lp->portid == pdb->portid &&
      lp->handle == pdb->handle &&
      lp->prli_word3 == pdb->prli_word3 &&
      ((pdb->prli_word0 & PRLI_WD0_EST_IMAGE_PAIR) ==
       (lp->prli_word0 & PRLI_WD0_EST_IMAGE_PAIR))) {
   if (lp->state != FC_PORTDB_STATE_NEW)
    lp->state = FC_PORTDB_STATE_VALID;
   isp_prt(isp, ISP_LOG_SANCFG,
       "Chan %d Port 0x%06x@0x%04x is valid",
       chan, pdb->portid, pdb->handle);
   return;
  }


  lp->state = FC_PORTDB_STATE_CHANGED;
  lp->handle = pdb->handle;
  lp->new_portid = pdb->portid;
  lp->new_prli_word0 = pdb->prli_word0;
  lp->new_prli_word3 = pdb->prli_word3;
  isp_prt(isp, ISP_LOG_SANCFG,
      "Chan %d Port 0x%06x@0x%04x is changed",
      chan, pdb->portid, pdb->handle);
  return;
 }


 if (!isp_find_pdb_empty(isp, chan, &lp)) {
  isp_prt(isp, ISP_LOGERR, "Chan %d out of portdb entries", chan);
  return;
 }

 ISP_MEMZERO(lp, sizeof (fcportdb_t));
 lp->probational = 0;
 lp->state = FC_PORTDB_STATE_NEW;
 lp->portid = lp->new_portid = pdb->portid;
 lp->prli_word0 = lp->new_prli_word0 = pdb->prli_word0;
 lp->prli_word3 = lp->new_prli_word3 = pdb->prli_word3;
 lp->handle = pdb->handle;
 lp->port_wwn = wwpn;
 lp->node_wwn = wwnn;
 isp_prt(isp, ISP_LOG_SANCFG, "Chan %d Port 0x%06x@0x%04x is new",
     chan, pdb->portid, pdb->handle);
}
