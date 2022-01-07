
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_txgain_entry {int dummy; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int bwn_phy_lp_gaintbl_write_r01 (struct bwn_mac*,int,struct bwn_txgain_entry) ;
 int bwn_phy_lp_gaintbl_write_r2 (struct bwn_mac*,int,struct bwn_txgain_entry) ;

__attribute__((used)) static void
bwn_phy_lp_gaintbl_write(struct bwn_mac *mac, int offset,
    struct bwn_txgain_entry data)
{

 if (mac->mac_phy.rev >= 2)
  bwn_phy_lp_gaintbl_write_r2(mac, offset, data);
 else
  bwn_phy_lp_gaintbl_write_r01(mac, offset, data);
}
