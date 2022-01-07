
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int ;
typedef int u_char ;
struct ccb_scsiio {int sense_resid; int resid; scalar_t__ scsi_status; int sense_len; scalar_t__ sense_data; } ;
typedef TYPE_2__* hcb_p ;
typedef TYPE_3__* ccb_p ;
struct TYPE_16__ {scalar_t__ host_status; scalar_t__ ssss_status; int host_flags; scalar_t__ xerr_status; int sv_resid; scalar_t__ sv_scsi_status; scalar_t__ sv_xerr_status; scalar_t__ dmamapped; int link_ccbq; int dmamap; int lun; int target; int sns_bbuf; TYPE_1__* cam_ccb; } ;
struct TYPE_15__ {int squeue_ba; int comp_ccbq; int data_dmat; } ;
struct TYPE_14__ {struct ccb_scsiio csio; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_AUTOSENSE_FAIL ;
 int CAM_AUTOSNS_VALID ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SEL_TIMEOUT ;
 int CAM_UNEXP_BUSFREE ;
 int DEBUG_FLAGS ;
 int DEBUG_RESULT ;
 int DEBUG_TINY ;
 int HF_SENSE ;
 scalar_t__ HS_COMPLETE ;
 scalar_t__ HS_COMP_ERR ;
 scalar_t__ HS_SEL_TIMEOUT ;
 scalar_t__ HS_UNEXPECTED ;
 int INL (int ) ;
 int MA_OWNED ;
 int MDELAY (int) ;
 int MIN (int,int) ;
 int OUTL_DSP (int ) ;
 int PRINT_ADDR (TYPE_3__*) ;
 int SCRIPTA_BA (TYPE_2__*,int ) ;
 int SYM_CONF_RESIDUAL_SUPPORT ;
 scalar_t__ SYM_DMA_READ ;
 int SYM_LOCK_ASSERT (int ) ;
 int SYM_SNS_BBUF_LEN ;
 scalar_t__ S_GOOD ;
 int bcopy (int ,scalar_t__*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (scalar_t__*,int) ;
 int nc_scratcha ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 int start ;
 int sym_clear_tasks (TYPE_2__*,int ,int ,int ,int) ;
 int sym_compute_residual (TYPE_2__*,TYPE_3__*) ;
 int sym_dequeue_from_squeue (TYPE_2__*,int,int ,int ,int) ;
 int sym_flush_comp_queue (TYPE_2__*,int ) ;
 int sym_insque_head (int *,int *) ;
 int sym_print_xerr (TYPE_3__*,scalar_t__) ;
 int sym_remque (int *) ;
 int sym_set_cam_status (union ccb*,int ) ;
 scalar_t__ sym_verbose ;
 int sym_xerr_cam_status (int ,scalar_t__) ;

__attribute__((used)) static void sym_complete_error (hcb_p np, ccb_p cp)
{
 struct ccb_scsiio *csio;
 u_int cam_status;
 int i, sense_returned;

 SYM_LOCK_ASSERT(MA_OWNED);




 if (!cp || !cp->cam_ccb)
  return;

 if (DEBUG_FLAGS & (DEBUG_TINY|DEBUG_RESULT)) {
  printf ("CCB=%lx STAT=%x/%x/%x DEV=%d/%d\n", (unsigned long)cp,
   cp->host_status, cp->ssss_status, cp->host_flags,
   cp->target, cp->lun);
  MDELAY(100);
 }




 csio = &cp->cam_ccb->csio;




 if (cp->xerr_status) {
  if (sym_verbose)
   sym_print_xerr(cp, cp->xerr_status);
  if (cp->host_status == HS_COMPLETE)
   cp->host_status = HS_COMP_ERR;
 }




 csio->sense_resid = 0;
 csio->resid = sym_compute_residual(np, cp);

 if (!SYM_CONF_RESIDUAL_SUPPORT) {
  csio->resid = 0;
  cp->sv_resid = 0;
 }

 if (cp->host_flags & HF_SENSE) {
  csio->scsi_status = cp->sv_scsi_status;
  csio->sense_resid = csio->resid;
  csio->resid = cp->sv_resid;
  cp->sv_resid = 0;
  if (sym_verbose && cp->sv_xerr_status)
   sym_print_xerr(cp, cp->sv_xerr_status);
  if (cp->host_status == HS_COMPLETE &&
      cp->ssss_status == S_GOOD &&
      cp->xerr_status == 0) {
   cam_status = sym_xerr_cam_status(CAM_SCSI_STATUS_ERROR,
        cp->sv_xerr_status);
   cam_status |= CAM_AUTOSNS_VALID;




   bzero(&csio->sense_data, sizeof(csio->sense_data));
   sense_returned = SYM_SNS_BBUF_LEN - csio->sense_resid;
   if (sense_returned < csio->sense_len)
    csio->sense_resid = csio->sense_len -
        sense_returned;
   else
    csio->sense_resid = 0;
   bcopy(cp->sns_bbuf, &csio->sense_data,
       MIN(csio->sense_len, sense_returned));
  }
  else
   cam_status = CAM_AUTOSENSE_FAIL;
 }
 else if (cp->host_status == HS_COMPLETE) {
  csio->scsi_status = cp->ssss_status;
  cam_status = CAM_SCSI_STATUS_ERROR;
 }
 else if (cp->host_status == HS_SEL_TIMEOUT)
  cam_status = CAM_SEL_TIMEOUT;
 else if (cp->host_status == HS_UNEXPECTED)
  cam_status = CAM_UNEXP_BUSFREE;
 else {
  if (sym_verbose) {
   PRINT_ADDR(cp);
   printf ("COMMAND FAILED (%x %x %x).\n",
    cp->host_status, cp->ssss_status,
    cp->xerr_status);
  }
  csio->scsi_status = cp->ssss_status;



  cam_status = sym_xerr_cam_status(CAM_REQ_CMP_ERR,
       cp->xerr_status);
 }





 i = (INL (nc_scratcha) - np->squeue_ba) / 4;
 (void) sym_dequeue_from_squeue(np, i, cp->target, cp->lun, -1);




 OUTL_DSP (SCRIPTA_BA (np, start));




 if (cp->dmamapped) {
  bus_dmamap_sync(np->data_dmat, cp->dmamap,
   (cp->dmamapped == SYM_DMA_READ ?
    BUS_DMASYNC_POSTREAD : BUS_DMASYNC_POSTWRITE));
 }





 sym_set_cam_status((union ccb *) csio, cam_status);
 sym_remque(&cp->link_ccbq);
 sym_insque_head(&cp->link_ccbq, &np->comp_ccbq);
 sym_flush_comp_queue(np, 0);
}
