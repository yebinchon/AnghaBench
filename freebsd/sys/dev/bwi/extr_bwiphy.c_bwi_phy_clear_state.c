
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_phy {int phy_flags; } ;


 int BWI_CLEAR_PHY_FLAGS ;

void
bwi_phy_clear_state(struct bwi_phy *phy)
{
 phy->phy_flags &= ~BWI_CLEAR_PHY_FLAGS;
}
