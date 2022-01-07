
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct virtio_scsi_cmd_req {uintptr_t tag; int cdb; int task_attr; int lun; } ;
struct TYPE_3__ {int cdb_bytes; int cdb_ptr; } ;
struct TYPE_4__ {int flags; } ;
struct ccb_scsiio {int tag_action; int cdb_len; TYPE_1__ cdb_io; TYPE_2__ ccb_h; } ;


 int CAM_CDB_POINTER ;



 int VIRTIO_SCSI_S_ACA ;
 int VIRTIO_SCSI_S_HEAD ;
 int VIRTIO_SCSI_S_ORDERED ;
 int VIRTIO_SCSI_S_SIMPLE ;
 int memcpy (int ,int ,int ) ;
 int vtscsi_set_request_lun (TYPE_2__*,int ) ;

__attribute__((used)) static void
vtscsi_init_scsi_cmd_req(struct ccb_scsiio *csio,
    struct virtio_scsi_cmd_req *cmd_req)
{
 uint8_t attr;

 switch (csio->tag_action) {
 case 129:
  attr = VIRTIO_SCSI_S_HEAD;
  break;
 case 128:
  attr = VIRTIO_SCSI_S_ORDERED;
  break;
 case 130:
  attr = VIRTIO_SCSI_S_ACA;
  break;
 default:
  attr = VIRTIO_SCSI_S_SIMPLE;
  break;
 }

 vtscsi_set_request_lun(&csio->ccb_h, cmd_req->lun);
 cmd_req->tag = (uintptr_t) csio;
 cmd_req->task_attr = attr;

 memcpy(cmd_req->cdb,
     csio->ccb_h.flags & CAM_CDB_POINTER ?
         csio->cdb_io.cdb_ptr : csio->cdb_io.cdb_bytes,
     csio->cdb_len);
}
