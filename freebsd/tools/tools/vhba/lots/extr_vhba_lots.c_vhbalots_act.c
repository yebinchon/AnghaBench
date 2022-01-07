
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* disk; TYPE_1__* vhba; } ;
typedef TYPE_3__ vhbalots_t ;
typedef int uint8_t ;
typedef size_t uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {scalar_t__ target_id; scalar_t__ target_lun; int status; } ;
struct TYPE_8__ {int* cdb_bytes; } ;
struct ccb_scsiio {char sense_data; unsigned int dxfer_len; char* data_ptr; int resid; scalar_t__ scsi_status; TYPE_6__ ccb_h; TYPE_2__ cdb_io; } ;
typedef size_t last_blk ;
typedef int junk ;
struct TYPE_10__ {int tqe; } ;
struct TYPE_7__ {int done; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SEL_TIMEOUT ;
 int CAM_STATUS_MASK ;
 int DISK_NBLKS ;
 int DISK_SHIFT ;
 int INQUIRY ;
 scalar_t__ MAX_LUN ;
 scalar_t__ MAX_TGT ;


 int PSEUDO_HDS ;
 int PSEUDO_SPC ;
 int PSEUDO_SPT ;





 int REPORT_LUNS ;
 int REQUEST_SENSE ;
 scalar_t__ SCSI_STATUS_CHECK_COND ;
 scalar_t__ SCSI_STATUS_OK ;



 int SMS_DBD ;


 int SMS_PAGE_CODE ;
 int SMS_PAGE_CTRL_CHANGEABLE ;
 int SMS_PAGE_CTRL_MASK ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_KEY_UNIT_ATTENTION ;
 int TAILQ_INSERT_TAIL (int *,TYPE_6__*,int ) ;




 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int min (int,unsigned int) ;
 TYPE_5__ sim_links ;
 int vhba_default_cmd (struct ccb_scsiio*,scalar_t__,int *) ;
 int vhba_fill_sense (struct ccb_scsiio*,int ,int,int) ;
 int vhba_rwparm (int*,size_t*,int*,int,int) ;

__attribute__((used)) static void
vhbalots_act(vhbalots_t *vhbas, struct ccb_scsiio *csio)
{
 char junk[128];
 uint8_t *cdb, *ptr, status;
 uint32_t data_len;
 uint64_t off;

 data_len = 0;
 status = SCSI_STATUS_OK;

 memset(&csio->sense_data, 0, sizeof (csio->sense_data));
 cdb = csio->cdb_io.cdb_bytes;

 if (csio->ccb_h.target_id >= MAX_TGT) {
  csio->ccb_h.status = CAM_SEL_TIMEOUT;
  TAILQ_INSERT_TAIL(&vhbas->vhba->done, &csio->ccb_h, sim_links.tqe);
  return;
 }
 if (csio->ccb_h.target_lun >= MAX_LUN && cdb[0] != INQUIRY && cdb[0] != REPORT_LUNS && cdb[0] != REQUEST_SENSE) {
  vhba_fill_sense(csio, SSD_KEY_ILLEGAL_REQUEST, 0x25, 0x0);
  TAILQ_INSERT_TAIL(&vhbas->vhba->done, &csio->ccb_h, sim_links.tqe);
  return;
 }

 switch (cdb[0]) {
 case 143:
 case 142:
 {
  unsigned int nbyte;
  uint8_t page = cdb[2] & SMS_PAGE_CODE;
  uint8_t pgctl = cdb[2] & SMS_PAGE_CTRL_MASK;

  switch (page) {
  case 133:
  case 132:
  case 135:
  case 134:
  case 136:
   break;
  default:
   vhba_fill_sense(csio, SSD_KEY_ILLEGAL_REQUEST, 0x24, 0x0);
   TAILQ_INSERT_TAIL(&vhbas->vhba->done, &csio->ccb_h, sim_links.tqe);
   return;
  }
  memset(junk, 0, sizeof (junk));
  if (cdb[1] & SMS_DBD) {
   ptr = &junk[4];
  } else {
   ptr = junk;
   ptr[3] = 8;
   ptr[4] = ((1 << DISK_SHIFT) >> 24) & 0xff;
   ptr[5] = ((1 << DISK_SHIFT) >> 16) & 0xff;
   ptr[6] = ((1 << DISK_SHIFT) >> 8) & 0xff;
   ptr[7] = ((1 << DISK_SHIFT)) & 0xff;

   ptr[8] = (DISK_NBLKS >> 24) & 0xff;
   ptr[9] = (DISK_NBLKS >> 16) & 0xff;
   ptr[10] = (DISK_NBLKS >> 8) & 0xff;
   ptr[11] = DISK_NBLKS & 0xff;
   ptr += 12;
  }

  if (page == 136 || page == 133) {
   ptr[0] = 133;
   ptr[1] = 24;
   if (pgctl != SMS_PAGE_CTRL_CHANGEABLE) {
    ptr[10] = (PSEUDO_SPT >> 8) & 0xff;
    ptr[11] = PSEUDO_SPT & 0xff;

    ptr[12] = ((1 << DISK_SHIFT) >> 8) & 0xff;
    ptr[13] = (1 << DISK_SHIFT) & 0xff;
   }
   ptr += 26;
  }

  if (page == 136 || page == 132) {
   ptr[0] = 132;
   ptr[1] = 24;
   if (pgctl != SMS_PAGE_CTRL_CHANGEABLE) {
    uint32_t cyl = (DISK_NBLKS + ((PSEUDO_SPC - 1))) / PSEUDO_SPC;

    ptr[2] = (cyl >> 24) & 0xff;
    ptr[3] = (cyl >> 16) & 0xff;
    ptr[4] = cyl & 0xff;

    ptr[5] = PSEUDO_HDS;
    ptr[20] = 0x1c;
    ptr[21] = 0x20;
   }
   ptr += 26;
  }

  if (page == 136 || page == 135) {
   ptr[0] = 135;
   ptr[1] = 18;
   ptr[2] = 1 << 2;
   ptr += 20;
  }

  if (page == 136 || page == 134) {
   ptr[0] = 134;
   ptr[1] = 10;
   if (pgctl != SMS_PAGE_CTRL_CHANGEABLE) {
    ptr[3] = 1 << 4;
    ptr[8] = 0x75;
    ptr[9] = 0x30;
   }
   ptr += 12;
  }
  nbyte = (char *)ptr - &junk[0];
  ptr[0] = nbyte - 4;

  if (cdb[0] == 143) {
   data_len = min(cdb[4], csio->dxfer_len);
  } else {
   uint16_t tw = (cdb[7] << 8) | cdb[8];
   data_len = min(tw, csio->dxfer_len);
  }
  data_len = min(data_len, nbyte);
  if (data_len) {
   memcpy(csio->data_ptr, junk, data_len);
  }
  csio->resid = csio->dxfer_len - data_len;
  break;
 }
 case 138:
 case 141:
 case 140:
 case 139:
 case 128:
 case 131:
 case 130:
 case 129:
  if (vhba_rwparm(cdb, &off, &data_len, DISK_NBLKS, DISK_SHIFT)) {
   vhba_fill_sense(csio, SSD_KEY_ILLEGAL_REQUEST, 0x24, 0x0);
   break;
  }
  if (data_len) {
   if ((cdb[0] & 0xf) == 8) {
    memcpy(csio->data_ptr, &vhbas->disk[off], data_len);
   } else {
    memcpy(&vhbas->disk[off], csio->data_ptr, data_len);
   }
   csio->resid = csio->dxfer_len - data_len;
  } else {
   csio->resid = csio->dxfer_len;
  }
  break;

 case 137:
  if (cdb[2] || cdb[3] || cdb[4] || cdb[5]) {
   vhba_fill_sense(csio, SSD_KEY_UNIT_ATTENTION, 0x24, 0x0);
   break;
  }
  if (cdb[8] & 0x1) {
   csio->data_ptr[0] = 0xff;
   csio->data_ptr[1] = 0xff;
   csio->data_ptr[2] = 0xff;
   csio->data_ptr[3] = 0xff;
  } else {
   uint64_t last_blk = DISK_NBLKS - 1;
   if (last_blk < 0xffffffffULL) {
       csio->data_ptr[0] = (last_blk >> 24) & 0xff;
       csio->data_ptr[1] = (last_blk >> 16) & 0xff;
       csio->data_ptr[2] = (last_blk >> 8) & 0xff;
       csio->data_ptr[3] = (last_blk) & 0xff;
   } else {
       csio->data_ptr[0] = 0xff;
       csio->data_ptr[1] = 0xff;
       csio->data_ptr[2] = 0xff;
       csio->data_ptr[3] = 0xff;
   }
  }
  csio->data_ptr[4] = ((1 << DISK_SHIFT) >> 24) & 0xff;
  csio->data_ptr[5] = ((1 << DISK_SHIFT) >> 16) & 0xff;
  csio->data_ptr[6] = ((1 << DISK_SHIFT) >> 8) & 0xff;
  csio->data_ptr[7] = ((1 << DISK_SHIFT)) & 0xff;
  break;
 default:
  vhba_default_cmd(csio, MAX_LUN, ((void*)0));
  break;
 }
 csio->ccb_h.status &= ~CAM_STATUS_MASK;
 if (csio->scsi_status != SCSI_STATUS_OK) {
  csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
  if (csio->scsi_status == SCSI_STATUS_CHECK_COND) {
   csio->ccb_h.status |= CAM_AUTOSNS_VALID;
  }
 } else {
  csio->scsi_status = SCSI_STATUS_OK;
  csio->ccb_h.status |= CAM_REQ_CMP;
 }
 TAILQ_INSERT_TAIL(&vhbas->vhba->done, &csio->ccb_h, sim_links.tqe);
}
