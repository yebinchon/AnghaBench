
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_phy_initn (struct bwn_mac*) ;

int
bwn_nphy_op_init(struct bwn_mac *mac)
{
 return bwn_phy_initn(mac);
}
