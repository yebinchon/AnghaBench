
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_hdr {int flags; } ;
struct ccb_scsiio {int cdb_len; TYPE_1__ cdb_io; struct ccb_hdr ccb_h; } ;
typedef int hcb_p ;
typedef TYPE_4__* ccb_p ;
struct TYPE_8__ {void* size; void* addr; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;
struct TYPE_10__ {TYPE_3__ phys; int cdb_buf; int cam_ccb; } ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_REQ_INVALID ;
 int CCB_BA (TYPE_4__*,int ) ;
 int MA_OWNED ;
 int SYM_LOCK_ASSERT (int ) ;
 int bcopy (scalar_t__,int ,int) ;
 int * cdb_buf ;
 void* cpu_to_scr (int) ;
 int sym_set_cam_status (int ,int ) ;

__attribute__((used)) static int sym_setup_cdb(hcb_p np, struct ccb_scsiio *csio, ccb_p cp)
{
 struct ccb_hdr *ccb_h;
 u32 cmd_ba;
 int cmd_len;

 SYM_LOCK_ASSERT(MA_OWNED);

 ccb_h = &csio->ccb_h;




 if (csio->cdb_len > sizeof(cp->cdb_buf)) {
  sym_set_cam_status(cp->cam_ccb, CAM_REQ_INVALID);
  return -1;
 }
 cmd_len = csio->cdb_len;

 if (ccb_h->flags & CAM_CDB_POINTER) {

  if (!(ccb_h->flags & CAM_CDB_PHYS)) {

   bcopy(csio->cdb_io.cdb_ptr, cp->cdb_buf, cmd_len);
   cmd_ba = CCB_BA (cp, cdb_buf[0]);
  } else {




   sym_set_cam_status(cp->cam_ccb, CAM_REQ_INVALID);
   return -1;

  }
 } else {

  bcopy(csio->cdb_io.cdb_bytes, cp->cdb_buf, cmd_len);
  cmd_ba = CCB_BA (cp, cdb_buf[0]);
 }

 cp->phys.cmd.addr = cpu_to_scr(cmd_ba);
 cp->phys.cmd.size = cpu_to_scr(cmd_len);

 return 0;
}
