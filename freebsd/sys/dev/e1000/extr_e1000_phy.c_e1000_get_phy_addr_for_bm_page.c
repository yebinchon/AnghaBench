
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 e1000_get_phy_addr_for_bm_page(u32 page, u32 reg)
{
 u32 phy_addr = 2;

 if ((page >= 768) || (page == 0 && reg == 25) || (reg == 31))
  phy_addr = 1;

 return phy_addr;
}
