
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccb_scsiio {int cdb_len; } ;
struct ccb_hdr {int target_id; } ;
union ccb {struct ccb_scsiio csio; struct ccb_hdr ccb_h; } ;
typedef scalar_t__ uint8_t ;
typedef int u_int32_t ;
struct mrsas_softc {int max_num_sge; int mrsas_dev; scalar_t__ is_aero; scalar_t__ is_ventura; } ;
struct mrsas_mpt_cmd {int sge_count; int length; TYPE_4__* io_request; } ;
struct TYPE_7__ {int numSGE; scalar_t__ numSGEExt; scalar_t__ exStatus; scalar_t__ status; int VirtualDiskTgtId; } ;
struct TYPE_6__ {int numSGE; } ;
struct TYPE_8__ {TYPE_2__ raid_context; TYPE_1__ raid_context_g35; } ;
struct TYPE_9__ {TYPE_3__ RaidContext; int DataLength; int IoFlags; } ;
typedef TYPE_4__ MRSAS_RAID_SCSI_IO_REQUEST ;


 int FAIL ;
 scalar_t__ SUCCESS ;
 int device_printf (int ,char*,...) ;
 scalar_t__ mrsas_map_request (struct mrsas_softc*,struct mrsas_mpt_cmd*,union ccb*) ;
 scalar_t__ mrsas_setup_io (struct mrsas_softc*,struct mrsas_mpt_cmd*,union ccb*,int ,TYPE_4__*) ;

int
mrsas_build_ldio_rw(struct mrsas_softc *sc, struct mrsas_mpt_cmd *cmd,
    union ccb *ccb)
{
 struct ccb_hdr *ccb_h = &(ccb->ccb_h);
 struct ccb_scsiio *csio = &(ccb->csio);
 u_int32_t device_id;
 MRSAS_RAID_SCSI_IO_REQUEST *io_request;

 device_id = ccb_h->target_id;

 io_request = cmd->io_request;
 io_request->RaidContext.raid_context.VirtualDiskTgtId = device_id;
 io_request->RaidContext.raid_context.status = 0;
 io_request->RaidContext.raid_context.exStatus = 0;


 io_request->IoFlags = csio->cdb_len;

 if (mrsas_setup_io(sc, cmd, ccb, device_id, io_request) != SUCCESS)
  device_printf(sc->mrsas_dev, "Build ldio or fpio error\n");

 io_request->DataLength = cmd->length;

 if (mrsas_map_request(sc, cmd, ccb) == SUCCESS) {
  if (cmd->sge_count > sc->max_num_sge) {
   device_printf(sc->mrsas_dev, "Error: sge_count (0x%x) exceeds"
       "max (0x%x) allowed\n", cmd->sge_count, sc->max_num_sge);
   return (FAIL);
  }
  if (sc->is_ventura || sc->is_aero)
   io_request->RaidContext.raid_context_g35.numSGE = cmd->sge_count;
  else {




   io_request->RaidContext.raid_context.numSGE = cmd->sge_count;
   io_request->RaidContext.raid_context.numSGEExt = (uint8_t)(cmd->sge_count >> 8);
  }

 } else {
  device_printf(sc->mrsas_dev, "Data map/load failed.\n");
  return (FAIL);
 }
 return (0);
}
