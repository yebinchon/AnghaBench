
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
typedef enum dot3Vendors { ____Placeholder_dot3Vendors } dot3Vendors ;
struct TYPE_2__ {char* name; int len; char** chips; } ;


 int DOT3CHIPSET_PART (int ) ;
 int DOT3CHIPSET_VENDOR (int ) ;
 TYPE_1__* chipset_names ;
 int printf (char*,...) ;

__attribute__((used)) static void
identify_chipset(u_int32_t chipset)
{
 enum dot3Vendors vendor = DOT3CHIPSET_VENDOR(chipset);
 u_int part = DOT3CHIPSET_PART(chipset);

 printf("\tChipset: ");
 if (vendor < 1
     || vendor >= (sizeof chipset_names)/(sizeof chipset_names[0])
     || !chipset_names[vendor].name) {
  printf("unknown\n");
  return;
 }

 printf("%s ", chipset_names[vendor].name);
 if (part < 1 || part >= chipset_names[vendor].len) {
  printf("unknown\n");
  return;
 }

 printf("%s\n", chipset_names[vendor].chips[part]);
}
