
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ocs_textbuf_t ;
struct TYPE_2__ {int xfer_req; int exp_xfer_len; int auto_resp; int transferred; int tag; int hw_tag; int tgt_task_tag; int init_task_tag; int display_name; } ;
typedef TYPE_1__ ocs_io_t ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_boolean (int *,int ,char*,int ) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;
 int ocs_mgmt_emit_string (int *,int ,char*,int ) ;

void
ocs_mgmt_io_get_all(ocs_textbuf_t *textbuf, void *object)
{
 ocs_io_t *io = (ocs_io_t *) object;

 ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "display_name", io->display_name);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "init_task_tag", "0x%x", io->init_task_tag);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "tgt_task_tag", "0x%x", io->tgt_task_tag);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "hw_tag", "0x%x", io->hw_tag);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "tag", "0x%x", io->tag);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "transferred", "%zu", io->transferred);
 ocs_mgmt_emit_boolean(textbuf, MGMT_MODE_RD, "auto_resp", io->auto_resp);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "exp_xfer_len", "%d", io->exp_xfer_len);
 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "xfer_req", "%d", io->xfer_req);

}
