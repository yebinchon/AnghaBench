
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ar71xx_board_mac_addr ;
 int ar71xx_platform_set_mac_hint (char const*,int,int ,int,int) ;
 int printf (char*,char const*,int,int) ;
 scalar_t__ resource_int_value (char*,int,char*,int*) ;
 scalar_t__ resource_string_value (char*,int,char*,char const**) ;

__attribute__((used)) static int
ar71xx_platform_check_mac_hints(void)
{
 int i;
 const char *devid;
 int offset, is_local, unitid;

 for (i = 0; i < 8; i++) {
  if (resource_string_value("ar71xx_mac_map", i, "devid",
      &devid) != 0)
   break;
  if (resource_int_value("ar71xx_mac_map", i, "unitid",
      &unitid) != 0)
   break;
  if (resource_int_value("ar71xx_mac_map", i, "offset",
      &offset) != 0)
   break;
  if (resource_int_value("ar71xx_mac_map", i, "is_local",
      &is_local) != 0)
   break;
  printf("ar71xx: devid '%s.%d', MAC offset '%d'\n",
      devid, unitid, offset);
  (void) ar71xx_platform_set_mac_hint(devid, unitid,
      ar71xx_board_mac_addr, offset, is_local);
 }

 return (0);
}
