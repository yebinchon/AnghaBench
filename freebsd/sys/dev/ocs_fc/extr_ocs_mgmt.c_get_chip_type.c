
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int result_buf ;
typedef int ocs_textbuf_t ;
typedef int ocs_t ;


 int MGMT_MODE_RD ;
 int SLI4_ASIC_ID_REG ;
 int SLI4_INTF_REG ;
 int SLI4_PCI_CLASS_REVISION ;
 int ocs_config_read32 (int *,int ) ;
 int ocs_mgmt_emit_string (int *,int ,char*,char*) ;
 int ocs_snprintf (char*,int,char*,int) ;
 int ocs_strcmp (char*,char*) ;
 int ocs_strncpy (char*,char*,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void
get_chip_type(ocs_t *ocs, char *name, ocs_textbuf_t *textbuf)
{
 uint32_t family;
 uint32_t asic_id;
 uint32_t asic_gen_num;
 uint32_t asic_rev_num;
 uint32_t rev_id;
 char result_buf[80];
 char tmp_buf[80];

 family = (ocs_config_read32(ocs, SLI4_INTF_REG) & 0x00000f00) >> 8;
 asic_id = ocs_config_read32(ocs, SLI4_ASIC_ID_REG);
 asic_rev_num = asic_id & 0xff;
 asic_gen_num = (asic_id & 0xff00) >> 8;

 rev_id = ocs_config_read32(ocs, SLI4_PCI_CLASS_REVISION) & 0xff;

 switch(family) {
 case 0x00:

  ocs_strncpy(result_buf, "BE2 A", sizeof(result_buf));
  ocs_snprintf(tmp_buf, 2, "%d", rev_id);
  strcat(result_buf, tmp_buf);
  break;
 case 0x01:

  ocs_strncpy(result_buf, "BE3", sizeof(result_buf));
  if (rev_id >= 0x10) {
   strcat(result_buf, "-R");
  }
  ocs_snprintf(tmp_buf, 3, " %c", ((rev_id & 0xf0) >> 4) + 'A');
  strcat(result_buf, tmp_buf);
  ocs_snprintf(tmp_buf, 2, "%d", rev_id & 0x0f);
  strcat(result_buf, tmp_buf);
  break;
 case 0x02:

  ocs_strncpy(result_buf, "Skyhawk A0", sizeof(result_buf));
  break;
 case 0x0a:

  ocs_strncpy(result_buf, "Lancer A", sizeof(result_buf));
  ocs_snprintf(tmp_buf, 2, "%d", rev_id & 0x0f);
  strcat(result_buf, tmp_buf);
  break;
 case 0x0b:

  ocs_strncpy(result_buf, "Lancer", sizeof(result_buf));
  ocs_snprintf(tmp_buf, 3, " %c", ((rev_id & 0xf0) >> 4) + 'A');
  strcat(result_buf, tmp_buf);
  ocs_snprintf(tmp_buf, 2, "%d", rev_id & 0x0f);
  strcat(result_buf, tmp_buf);
  break;
 case 0x0c:
  ocs_strncpy(result_buf, "Lancer G6", sizeof(result_buf));
  break;
 case 0x0f:

  switch(asic_gen_num) {
  case 0x00:
   ocs_strncpy(result_buf, "BE2", sizeof(result_buf));
   break;
  case 0x03:
   ocs_strncpy(result_buf, "BE3-R", sizeof(result_buf));
   break;
  case 0x04:
   ocs_strncpy(result_buf, "Skyhawk-R", sizeof(result_buf));
   break;
  case 0x05:
   ocs_strncpy(result_buf, "Corsair", sizeof(result_buf));
   break;
  case 0x0b:
   ocs_strncpy(result_buf, "Lancer", sizeof(result_buf));
   break;
  case 0x0c:
   ocs_strncpy(result_buf, "LancerG6", sizeof(result_buf));
   break;
  default:
   ocs_strncpy(result_buf, "Unknown", sizeof(result_buf));
  }
  if (ocs_strcmp(result_buf, "Unknown") != 0) {
   ocs_snprintf(tmp_buf, 3, " %c", ((asic_rev_num & 0xf0) >> 4) + 'A');
   strcat(result_buf, tmp_buf);
   ocs_snprintf(tmp_buf, 2, "%d", asic_rev_num & 0x0f);
   strcat(result_buf, tmp_buf);
  }
  break;
 default:
  ocs_strncpy(result_buf, "Unknown", sizeof(result_buf));
 }

 ocs_mgmt_emit_string(textbuf, MGMT_MODE_RD, "chip_type", result_buf);

}
