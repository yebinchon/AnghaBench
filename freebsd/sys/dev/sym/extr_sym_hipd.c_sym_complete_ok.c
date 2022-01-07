
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef TYPE_4__* tcb_p ;
struct ccb_scsiio {int scsi_status; scalar_t__ resid; } ;
typedef int lcb_p ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_17__ {scalar_t__ lastp; scalar_t__ goalp; } ;
struct TYPE_18__ {TYPE_2__ head; } ;
struct TYPE_21__ {scalar_t__ host_status; size_t target; scalar_t__ dmamapped; int ssss_status; int dmamap; TYPE_3__ phys; int lun; TYPE_1__* cam_ccb; } ;
struct TYPE_20__ {int data_dmat; TYPE_4__* target; } ;
struct TYPE_19__ {int lun_map; } ;
struct TYPE_16__ {struct ccb_scsiio csio; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_REQ_CMP ;
 scalar_t__ HS_COMPLETE ;
 int MA_OWNED ;
 int SYM_CONF_RESIDUAL_SUPPORT ;
 scalar_t__ SYM_DMA_READ ;
 int SYM_LOCK_ASSERT (int ) ;
 int assert (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 scalar_t__ sym_compute_residual (TYPE_5__*,TYPE_6__*) ;
 int sym_free_ccb (TYPE_5__*,TYPE_6__*) ;
 int sym_lp (TYPE_4__*,int ) ;
 int sym_set_bit (int ,int ) ;
 int sym_set_cam_status (union ccb*,int ) ;
 int sym_xpt_done (TYPE_5__*,union ccb*,TYPE_6__*) ;

__attribute__((used)) static void sym_complete_ok (hcb_p np, ccb_p cp)
{
 struct ccb_scsiio *csio;
 tcb_p tp;
 lcb_p lp;

 SYM_LOCK_ASSERT(MA_OWNED);




 if (!cp || !cp->cam_ccb)
  return;
 assert (cp->host_status == HS_COMPLETE);




 csio = &cp->cam_ccb->csio;
 tp = &np->target[cp->target];
 lp = sym_lp(tp, cp->lun);




 if (!lp)
  sym_set_bit(tp->lun_map, cp->lun);





 csio->resid = 0;
 if (cp->phys.head.lastp != cp->phys.head.goalp)
  csio->resid = sym_compute_residual(np, cp);






 if (!SYM_CONF_RESIDUAL_SUPPORT)
  csio->resid = 0;




 if (cp->dmamapped) {
  bus_dmamap_sync(np->data_dmat, cp->dmamap,
   (cp->dmamapped == SYM_DMA_READ ?
    BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE));
 }



 csio->scsi_status = cp->ssss_status;
 sym_set_cam_status((union ccb *) csio, CAM_REQ_CMP);
 sym_xpt_done(np, (union ccb *) csio, cp);
 sym_free_ccb(np, cp);
}
