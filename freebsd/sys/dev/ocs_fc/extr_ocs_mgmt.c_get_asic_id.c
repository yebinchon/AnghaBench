
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RD ;
 int SLI4_ASIC_ID_REG ;
 int ocs_config_read32 (int *,int ) ;
 int ocs_mgmt_emit_int (int *,int ,char*,char*,int ) ;

__attribute__((used)) static void
get_asic_id(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{

 ocs_mgmt_emit_int(textbuf, MGMT_MODE_RD, "asic_id_reg", "0x%04x",
  ocs_config_read32(ocs, SLI4_ASIC_ID_REG));
}
