
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* flags; char* status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int ocs_textbuf_t ;
typedef int ocs_scsi_ddump_type_e ;
struct TYPE_5__ {scalar_t__ app; int state; } ;
struct TYPE_6__ {TYPE_2__ tgt_io; } ;
typedef TYPE_3__ ocs_io_t ;
 int ocs_ddump_value (int *,char*,char*,char*) ;

void
ocs_scsi_tgt_ddump(ocs_textbuf_t *textbuf, ocs_scsi_ddump_type_e type, void *obj)
{
 switch(type) {
 case 132: {

  break;
 }
 case 131: {

  break;
 }
 case 128: {

  break;
 }
 case 129: {

  break;
 }
 case 130: {
  ocs_io_t *io = obj;
  char *state_str = ((void*)0);

  switch (io->tgt_io.state) {
  case 134:
   state_str = "FREE";
   break;
  case 137:
   state_str = "COMMAND";
   break;
  case 136:
   state_str = "DATA";
   break;
  case 135:
   state_str = "DATA_DONE";
   break;
  case 133:
   state_str = "RESP";
   break;
  default:
   state_str = "xxx BAD xxx";
  }
  ocs_ddump_value(textbuf, "cam_st", "%s", state_str);
  if (io->tgt_io.app) {
   ocs_ddump_value(textbuf, "cam_flags", "%#x",
    ((union ccb *)(io->tgt_io.app))->ccb_h.flags);
   ocs_ddump_value(textbuf, "cam_status", "%#x",
    ((union ccb *)(io->tgt_io.app))->ccb_h.status);
  }

  break;
 }
 default: {
  break;
 }
 }
}
