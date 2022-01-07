
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct scsi_inquiry_data {int revision; int product; int vendor; } ;
struct TYPE_9__ {int flags; size_t target_id; size_t target_lun; } ;
struct TYPE_8__ {int* cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; TYPE_2__ ccb_h; scalar_t__ data_ptr; TYPE_1__ cdb_io; } ;
struct TYPE_10__ {TYPE_4__*** device_list; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
struct TYPE_11__ {scalar_t__ devtype; scalar_t__ volume_offline; int raid_level; } ;
typedef TYPE_4__ pqi_scsi_dev_t ;


 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int DBG_FUNC (char*) ;
 scalar_t__ DISK_DEVICE ;
 int INQUIRY ;
 scalar_t__ SHORT_INQUIRY_LENGTH ;
 int SID_PRODUCT_SIZE ;
 int SID_REVISION_SIZE ;
 int SID_VENDOR_SIZE ;
 int SI_EVPD ;
 scalar_t__ pqisrc_is_external_raid_device (TYPE_4__*) ;
 int pqisrc_is_logical_device (TYPE_4__*) ;
 char* pqisrc_raidlevel_to_string (int ) ;
 int strncpy (int ,char*,int ) ;

__attribute__((used)) static void
smartpqi_fix_ld_inquiry(pqisrc_softstate_t *softs, struct ccb_scsiio *csio)
{
 struct scsi_inquiry_data *inq = ((void*)0);
 uint8_t *cdb = ((void*)0);
 pqi_scsi_dev_t *device = ((void*)0);

 DBG_FUNC("IN\n");

  cdb = (csio->ccb_h.flags & CAM_CDB_POINTER) ?
  (uint8_t *)csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes;
 if(cdb[0] == INQUIRY &&
  (cdb[1] & SI_EVPD) == 0 &&
  (csio->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN &&
  csio->dxfer_len >= SHORT_INQUIRY_LENGTH) {

  inq = (struct scsi_inquiry_data *)csio->data_ptr;

  device = softs->device_list[csio->ccb_h.target_id][csio->ccb_h.target_lun];



  if( !device || !pqisrc_is_logical_device(device) ||
    (device->devtype != DISK_DEVICE) ||
    pqisrc_is_external_raid_device(device)) {
     return;
  }

  strncpy(inq->vendor, "MSCC",
          SID_VENDOR_SIZE);
  strncpy(inq->product,
   pqisrc_raidlevel_to_string(device->raid_level),
          SID_PRODUCT_SIZE);
  strncpy(inq->revision, device->volume_offline?"OFF":"OK",
          SID_REVISION_SIZE);
     }

 DBG_FUNC("OUT\n");
}
