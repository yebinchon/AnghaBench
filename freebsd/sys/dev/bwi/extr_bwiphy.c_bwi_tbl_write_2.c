
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_phy {scalar_t__ phy_tbl_ctrl; scalar_t__ phy_tbl_data_lo; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;


 int KASSERT (int,char*) ;
 int PHY_WRITE (struct bwi_mac*,scalar_t__,int ) ;

__attribute__((used)) static void
bwi_tbl_write_2(struct bwi_mac *mac, uint16_t ofs, uint16_t data)
{
 struct bwi_phy *phy = &mac->mac_phy;

 KASSERT(phy->phy_tbl_ctrl != 0 && phy->phy_tbl_data_lo != 0,
    ("phy_tbl_ctrl %d phy_tbl_data_lo %d",
      phy->phy_tbl_ctrl, phy->phy_tbl_data_lo));
 PHY_WRITE(mac, phy->phy_tbl_ctrl, ofs);
 PHY_WRITE(mac, phy->phy_tbl_data_lo, data);
}
