
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RD ;
 int OCS_SCSI_PORTNUM ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 char* ocs_scsi_get_property_ptr (int *,int ) ;

__attribute__((used)) static void
get_phy_port_num(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 char *phy_port = ((void*)0);

 phy_port = ocs_scsi_get_property_ptr(ocs, OCS_SCSI_PORTNUM);
 if (phy_port) {
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "phy_port_num", phy_port);
 } else {
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "phy_port_num", "unknown");
 }
}
