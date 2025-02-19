
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fw_port_type { ____Placeholder_fw_port_type } fw_port_type ;


 int ARRAY_SIZE (char const* const*) ;

const char *t4_get_port_type_description(enum fw_port_type port_type)
{
 static const char *const port_type_description[] = {
  "Fiber_XFI",
  "Fiber_XAUI",
  "BT_SGMII",
  "BT_XFI",
  "BT_XAUI",
  "KX4",
  "CX4",
  "KX",
  "KR",
  "SFP",
  "BP_AP",
  "BP4_AP",
  "QSFP_10G",
  "QSA",
  "QSFP",
  "BP40_BA",
  "KR4_100G",
  "CR4_QSFP",
  "CR_QSFP",
  "CR2_QSFP",
  "SFP28",
  "KR_SFP28",
 };

 if (port_type < ARRAY_SIZE(port_type_description))
  return port_type_description[port_type];
 return "UNKNOWN";
}
