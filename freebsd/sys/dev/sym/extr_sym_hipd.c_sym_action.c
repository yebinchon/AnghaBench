
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_15__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_13__ ;
typedef struct TYPE_35__ TYPE_12__ ;
typedef struct TYPE_34__ TYPE_11__ ;
typedef struct TYPE_33__ TYPE_10__ ;


struct TYPE_43__ {int* cdb_ptr; int* cdb_bytes; } ;
struct ccb_hdr {int status; size_t target_id; scalar_t__ target_lun; int flags; } ;
struct ccb_scsiio {int tag_action; TYPE_5__ cdb_io; struct ccb_hdr ccb_h; } ;
struct TYPE_42__ {scalar_t__ func_code; int path; } ;
union ccb {struct ccb_scsiio csio; TYPE_4__ ccb_h; } ;
typedef int u_int ;
typedef int u_char ;
typedef TYPE_12__* tcb_p ;
struct cam_sim {int dummy; } ;
typedef TYPE_13__* lcb_p ;
typedef TYPE_14__* hcb_p ;
typedef TYPE_15__* ccb_p ;
struct TYPE_47__ {void* restart; void* start; } ;
struct TYPE_45__ {scalar_t__ width; scalar_t__ period; scalar_t__ offset; scalar_t__ options; } ;
struct TYPE_44__ {scalar_t__ width; scalar_t__ period; scalar_t__ offset; scalar_t__ options; } ;
struct TYPE_46__ {TYPE_7__ goal; TYPE_6__ current; } ;
struct TYPE_41__ {void* size; void* addr; } ;
struct TYPE_40__ {int uval; int sval; int wval; } ;
struct TYPE_39__ {int sel_scntl4; int sel_sxfer; int sel_scntl3; int sel_id; } ;
struct TYPE_33__ {TYPE_9__ go; } ;
struct TYPE_34__ {TYPE_3__ smsg; TYPE_1__ select; TYPE_10__ head; } ;
struct TYPE_38__ {int lun; int tag; int* scsi_smsg; int ext_sg; scalar_t__ ext_ofs; scalar_t__ extra_bytes; scalar_t__ host_flags; scalar_t__ xerr_status; int ssss_status; scalar_t__ nego_status; int host_status; int actualquirks; TYPE_11__ phys; int target; union ccb* cam_ccb; } ;
struct TYPE_37__ {size_t myaddr; TYPE_12__* target; } ;
struct TYPE_36__ {int current_flags; } ;
struct TYPE_35__ {int usrflags; int quirks; TYPE_2__ head; int nego_cp; TYPE_8__ tinfo; } ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQ_INPROG ;
 int CAM_RESRC_UNAVAIL ;
 int CAM_STATUS_MASK ;
 int CAM_TAG_ACTION_VALID ;
 int CCB_BA (TYPE_15__*,int ) ;
 int HS_BUSY ;
 int HS_NEGOTIATE ;
 int MA_OWNED ;

 int M_IDENTIFY ;

 int M_SIMPLE_TAG ;
 int NO_TAG ;
 int SCRIPTA_BA (TYPE_14__*,int ) ;
 scalar_t__ SYM_CONF_MAX_LUN ;
 size_t SYM_CONF_MAX_TARGET ;
 int SYM_DISC_ENABLED ;
 int SYM_LOCK_ASSERT (int ) ;
 int SYM_QUIRK_AUTOSAVE ;
 int SYM_SCAN_BOOT_DISABLED ;
 int SYM_SCAN_LUNS_DISABLED ;
 int S_ILLEGAL ;
 scalar_t__ XPT_SCSI_IO ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 void* cpu_to_scr (int) ;
 int resel_dsa ;
 int scsi_smsg ;
 int select ;
 int sym_action2 (struct cam_sim*,union ccb*) ;
 int sym_free_ccb (TYPE_14__*,TYPE_15__*) ;
 TYPE_15__* sym_get_ccb (TYPE_14__*,size_t,scalar_t__,int) ;
 TYPE_13__* sym_lp (TYPE_12__*,scalar_t__) ;
 int sym_prepare_nego (TYPE_14__*,TYPE_15__*,int ,int*) ;
 scalar_t__ sym_setup_cdb (TYPE_14__*,struct ccb_scsiio*,TYPE_15__*) ;
 int sym_setup_data_and_start (TYPE_14__*,struct ccb_scsiio*,TYPE_15__*) ;
 int sym_xpt_done (TYPE_14__*,union ccb*,TYPE_15__*) ;
 int sym_xpt_done2 (TYPE_14__*,union ccb*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void sym_action(struct cam_sim *sim, union ccb *ccb)
{
 hcb_p np;
 tcb_p tp;
 lcb_p lp;
 ccb_p cp;
 int tmp;
 u_char idmsg, *msgptr;
 u_int msglen;
 struct ccb_scsiio *csio;
 struct ccb_hdr *ccb_h;

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE, ("sym_action\n"));




 np = (hcb_p) cam_sim_softc(sim);

 SYM_LOCK_ASSERT(MA_OWNED);





 if (ccb->ccb_h.func_code != XPT_SCSI_IO) {
  sym_action2(sim, ccb);
  return;
 }
 csio = &ccb->csio;
 ccb_h = &csio->ccb_h;




 if ((ccb_h->status & CAM_STATUS_MASK) != CAM_REQ_INPROG) {
  xpt_done(ccb);
  return;
 }





 if (ccb_h->target_id == np->myaddr ||
     ccb_h->target_id >= SYM_CONF_MAX_TARGET ||
     ccb_h->target_lun >= SYM_CONF_MAX_LUN) {
  sym_xpt_done2(np, ccb, CAM_DEV_NOT_THERE);
  return;
        }




 tp = &np->target[ccb_h->target_id];
 lp = sym_lp(tp, ccb_h->target_lun);
 if (!(ccb_h->flags & CAM_CDB_PHYS) &&
     (0x12 == ((ccb_h->flags & CAM_CDB_POINTER) ?
    csio->cdb_io.cdb_ptr[0] : csio->cdb_io.cdb_bytes[0]))) {
  if ((tp->usrflags & SYM_SCAN_BOOT_DISABLED) ||
      ((tp->usrflags & SYM_SCAN_LUNS_DISABLED) &&
       ccb_h->target_lun != 0)) {
   tp->usrflags &= ~SYM_SCAN_BOOT_DISABLED;
   sym_xpt_done2(np, ccb, CAM_DEV_NOT_THERE);
   return;
  }
 }




 tmp = ((ccb_h->flags & CAM_TAG_ACTION_VALID) != 0);
 cp = sym_get_ccb(np, ccb_h->target_id, ccb_h->target_lun, tmp);
 if (!cp) {
  sym_xpt_done2(np, ccb, CAM_RESRC_UNAVAIL);
  return;
 }




 cp->cam_ccb = ccb;




 idmsg = M_IDENTIFY | cp->lun;
 if (cp->tag != NO_TAG || (lp && (lp->current_flags & SYM_DISC_ENABLED)))
  idmsg |= 0x40;

 msgptr = cp->scsi_smsg;
 msglen = 0;
 msgptr[msglen++] = idmsg;




 if (cp->tag != NO_TAG) {
  u_char order = csio->tag_action;

  switch(order) {
  case 128:
   break;
  case 129:
   break;
  default:
   order = M_SIMPLE_TAG;
  }
  msgptr[msglen++] = order;
  msgptr[msglen++] = (cp->tag << 1) + 1;

 }





 cp->nego_status = 0;
 if (tp->tinfo.current.width != tp->tinfo.goal.width ||
     tp->tinfo.current.period != tp->tinfo.goal.period ||
     tp->tinfo.current.offset != tp->tinfo.goal.offset ||
     tp->tinfo.current.options != tp->tinfo.goal.options) {
  if (!tp->nego_cp && lp)
   msglen += sym_prepare_nego(np, cp, 0, msgptr + msglen);
 }
 cp->phys.head.go.start = cpu_to_scr(SCRIPTA_BA (np, select));
 cp->phys.head.go.restart = cpu_to_scr(SCRIPTA_BA (np, resel_dsa));




 cp->phys.select.sel_id = cp->target;
 cp->phys.select.sel_scntl3 = tp->head.wval;
 cp->phys.select.sel_sxfer = tp->head.sval;
 cp->phys.select.sel_scntl4 = tp->head.uval;




 cp->phys.smsg.addr = cpu_to_scr(CCB_BA (cp, scsi_smsg));
 cp->phys.smsg.size = cpu_to_scr(msglen);




 if (sym_setup_cdb(np, csio, cp) < 0) {
  sym_xpt_done(np, ccb, cp);
  sym_free_ccb(np, cp);
  return;
 }







 cp->actualquirks = SYM_QUIRK_AUTOSAVE;
 cp->host_status = cp->nego_status ? HS_NEGOTIATE : HS_BUSY;
 cp->ssss_status = S_ILLEGAL;
 cp->xerr_status = 0;
 cp->host_flags = 0;
 cp->extra_bytes = 0;





 cp->ext_sg = -1;
 cp->ext_ofs = 0;





 sym_setup_data_and_start(np, csio, cp);
}
