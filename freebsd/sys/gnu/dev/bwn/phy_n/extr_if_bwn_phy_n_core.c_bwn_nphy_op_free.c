
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_phy_n {int dummy; } ;
struct bwn_phy {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 int M_DEVBUF ;
 int free (struct bwn_phy_n*,int ) ;

void
bwn_nphy_op_free(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = phy->phy_n;

 free(nphy, M_DEVBUF);
 phy->phy_n = ((void*)0);
}
