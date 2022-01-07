
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_info_component {int build_time; int build_date; int version; int name; } ;


 int fw_date_width ;
 int fw_name_width ;
 int fw_time_width ;
 int fw_version_width ;
 int strlen (int ) ;

void
scan_firmware(struct mfi_info_component *comp)
{
 int len;

 len = strlen(comp->name);
 if (fw_name_width < len)
  fw_name_width = len;
 len = strlen(comp->version);
 if (fw_version_width < len)
  fw_version_width = len;
 len = strlen(comp->build_date);
 if (fw_date_width < len)
  fw_date_width = len;
 len = strlen(comp->build_time);
 if (fw_time_width < len)
  fw_time_width = len;
}
