
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 char* ixl_phy_type_string (int,int) ;

__attribute__((used)) static char *
ixl_phy_type_string_ls(u8 val)
{
 if (val >= 0x1F)
  return ixl_phy_type_string(val - 0x1F, 1);
 else
  return ixl_phy_type_string(val, 0);
}
