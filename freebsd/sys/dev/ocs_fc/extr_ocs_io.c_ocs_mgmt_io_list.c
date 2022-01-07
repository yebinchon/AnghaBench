
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_property_name (int *,int ,char*) ;

void
ocs_mgmt_io_list(ocs_textbuf_t *textbuf, void *object)
{


 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "display_name");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "init_task_tag");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "tag");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "transferred");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "auto_resp");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "exp_xfer_len");
 ocs_mgmt_emit_property_name(textbuf, MGMT_MODE_RD, "xfer_req");
}
