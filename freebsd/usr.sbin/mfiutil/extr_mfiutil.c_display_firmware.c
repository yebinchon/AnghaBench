
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_info_component {char* name; char* version; int build_time; int build_date; } ;


 char* fw_date_width ;
 char* fw_name_width ;
 int fw_time_width ;
 char* fw_version_width ;
 int printf (char*,char*,char*,char*,char*,char*,int ,int ,int ,char const*) ;

void
display_firmware(struct mfi_info_component *comp, const char *tag)
{

 printf("%-*s  %-*s  %-*s  %-*s  %s\n", fw_name_width, comp->name,
     fw_version_width, comp->version, fw_date_width, comp->build_date,
     fw_time_width, comp->build_time, tag);
}
