
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qualifier ;
typedef int ocs_textbuf_t ;
struct TYPE_2__ {int instance_index; int xfer_req; int exp_xfer_len; int auto_resp; int transferred; int tag; int hw_tag; int tgt_task_tag; int init_task_tag; int display_name; } ;
typedef TYPE_1__ ocs_io_t ;


 int MGMT_MODE_RD ;
 int ocs_mgmt_emit_boolean (int *,int ,char*,int ) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;
 int ocs_mgmt_emit_string (int *,int ,char*,int ) ;
 scalar_t__ ocs_strcmp (char*,char*) ;
 scalar_t__ ocs_strncmp (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlen (char*) ;

int
ocs_mgmt_io_get(ocs_textbuf_t *textbuf, char *parent, char *name, void *object)
{
 char qualifier[80];
 int retval = -1;
 ocs_io_t *io = (ocs_io_t *) object;

 snprintf(qualifier, sizeof(qualifier), "%s/io[%d]", parent, io->instance_index);


 if (ocs_strncmp(name, qualifier, strlen(qualifier)) == 0) {
  char *unqualified_name = name + strlen(qualifier) +1;


  if (ocs_strcmp(unqualified_name, "display_name") == 0) {
   ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "display_name", io->display_name);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "init_task_tag") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "init_task_tag", "0x%x", io->init_task_tag);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "tgt_task_tag") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "tgt_task_tag", "0x%x", io->tgt_task_tag);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "hw_tag") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "hw_tag", "0x%x", io->hw_tag);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "tag") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "tag", "0x%x", io->tag);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "transferred") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "transferred", "%zu", io->transferred);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "auto_resp") == 0) {
   ocs_mgmt_emit_boolean(textbuf, MGMT_MODE_RD, "auto_resp", io->auto_resp);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "exp_xfer_len") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "exp_xfer_len", "%d", io->exp_xfer_len);
   retval = 0;
  } else if (ocs_strcmp(unqualified_name, "xfer_req") == 0) {
   ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "xfer_req", "%d", io->xfer_req);
   retval = 0;
  }
 }

 return retval;
}
