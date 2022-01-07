
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RD ;
 int OCS_SCSI_SERIALNUMBER ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 int * ocs_scsi_get_property_ptr (int *,int ) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static void
get_sn(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint8_t *pserial;
 uint32_t len;
 char sn_buf[256];

 pserial = ocs_scsi_get_property_ptr(ocs, OCS_SCSI_SERIALNUMBER);
 if (pserial) {
  len = *pserial ++;
  strncpy(sn_buf, (char*)pserial, len);
  sn_buf[len] = '\0';
  ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "sn", sn_buf);
 }
}
