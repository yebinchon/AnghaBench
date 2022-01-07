
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_8__ {TYPE_1__* entries; } ;
struct TYPE_11__ {int target_id; int flags; int target_lun; TYPE_2__ sim_priv; } ;
struct TYPE_10__ {int cdb_bytes; int cdb_ptr; } ;
struct ccb_scsiio {TYPE_5__ ccb_h; int dxfer_len; int data_ptr; int cdb_len; TYPE_4__ cdb_io; } ;
struct amr_softc {scalar_t__ support_ext_cdb; } ;
struct amr_passthrough {int ap_ars; int ap_request_sense_length; int ap_channel; int ap_scsi_id; int ap_logical_drive_no; int ap_cdb_length; int * ap_cdb; int ap_data_transfer_length; scalar_t__ ap_islogical; scalar_t__ ap_timeout; } ;
struct amr_ext_passthrough {int ap_timeout; int ap_ars; int ap_request_sense_length; int ap_channel; int ap_scsi_id; int ap_logical_drive_no; int ap_cdb_length; int * ap_cdb; int ap_data_transfer_length; scalar_t__ ap_islogical; } ;
struct TYPE_12__ {int mb_command; } ;
struct amr_command {TYPE_6__ ac_mailbox; int ac_complete; struct ccb_scsiio* ac_private; int ac_flags; int ac_length; int ac_data; TYPE_3__* ac_ccb; } ;
struct TYPE_9__ {struct amr_passthrough ccb_pthru; struct amr_ext_passthrough ccb_epthru; } ;
struct TYPE_7__ {int field; } ;


 int AMR_CMD_CCB ;
 int AMR_CMD_DATAIN ;
 int AMR_CMD_DATAOUT ;
 int AMR_CMD_EXTPASS ;
 int AMR_CMD_PASS ;
 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;
 int ENOMEM ;
 struct amr_command* amr_alloccmd (struct amr_softc*) ;
 int amr_cam_complete ;
 scalar_t__ amr_dequeue_ccb (struct amr_softc*) ;
 int amr_releasecmd (struct amr_command*) ;
 int amr_requeue_ccb (struct amr_softc*,union ccb*) ;
 int bcopy (int ,int *,int ) ;
 int debug (int,char*,int ,int ,int ,int,int,int ) ;

__attribute__((used)) static int
amr_cam_command(struct amr_softc *sc, struct amr_command **acp)
{
 struct amr_command *ac;
 struct amr_passthrough *ap;
 struct amr_ext_passthrough *aep;
 struct ccb_scsiio *csio;
 int bus, target, error;

 error = 0;
 ac = ((void*)0);
 ap = ((void*)0);
 aep = ((void*)0);


 if ((csio = (struct ccb_scsiio *)amr_dequeue_ccb(sc)) == ((void*)0))
 goto out;


 bus = csio->ccb_h.sim_priv.entries[0].field;
 target = csio->ccb_h.target_id;






 if ((ac = amr_alloccmd(sc)) == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }


 if (sc->support_ext_cdb ) {
  aep = &ac->ac_ccb->ccb_epthru;
  aep->ap_timeout = 2;
  aep->ap_ars = 1;
  aep->ap_request_sense_length = 14;
  aep->ap_islogical = 0;
  aep->ap_channel = bus;
  aep->ap_scsi_id = target;
  aep->ap_logical_drive_no = csio->ccb_h.target_lun;
  aep->ap_cdb_length = csio->cdb_len;
  aep->ap_data_transfer_length = csio->dxfer_len;
  if (csio->ccb_h.flags & CAM_CDB_POINTER) {
   bcopy(csio->cdb_io.cdb_ptr, aep->ap_cdb, csio->cdb_len);
  } else {
   bcopy(csio->cdb_io.cdb_bytes, aep->ap_cdb,
       csio->cdb_len);
  }





  debug(2, " COMMAND %x/%d+%d to %d:%d:%d", aep->ap_cdb[0],
      aep->ap_cdb_length, csio->dxfer_len, aep->ap_channel,
      aep->ap_scsi_id, aep->ap_logical_drive_no);

 } else {
  ap = &ac->ac_ccb->ccb_pthru;
  ap->ap_timeout = 0;
  ap->ap_ars = 1;
  ap->ap_request_sense_length = 14;
  ap->ap_islogical = 0;
  ap->ap_channel = bus;
  ap->ap_scsi_id = target;
  ap->ap_logical_drive_no = csio->ccb_h.target_lun;
  ap->ap_cdb_length = csio->cdb_len;
  ap->ap_data_transfer_length = csio->dxfer_len;
  if (csio->ccb_h.flags & CAM_CDB_POINTER) {
   bcopy(csio->cdb_io.cdb_ptr, ap->ap_cdb, csio->cdb_len);
  } else {
   bcopy(csio->cdb_io.cdb_bytes, ap->ap_cdb,
       csio->cdb_len);
  }





  debug(2, " COMMAND %x/%d+%d to %d:%d:%d", ap->ap_cdb[0],
      ap->ap_cdb_length, csio->dxfer_len, ap->ap_channel,
      ap->ap_scsi_id, ap->ap_logical_drive_no);
 }

 ac->ac_flags |= AMR_CMD_CCB;

 ac->ac_data = csio->data_ptr;
 ac->ac_length = csio->dxfer_len;
 if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN)
  ac->ac_flags |= AMR_CMD_DATAIN;
 if ((csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT)
  ac->ac_flags |= AMR_CMD_DATAOUT;

 ac->ac_private = csio;
 ac->ac_complete = amr_cam_complete;
 if ( sc->support_ext_cdb ) {
  ac->ac_mailbox.mb_command = AMR_CMD_EXTPASS;
 } else {
  ac->ac_mailbox.mb_command = AMR_CMD_PASS;
 }

out:
 if (error != 0) {
  if (ac != ((void*)0))
   amr_releasecmd(ac);
  if (csio != ((void*)0))

   amr_requeue_ccb(sc, (union ccb *)csio);
 }
 *acp = ac;
 return(error);
}
