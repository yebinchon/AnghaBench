
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_RFCTL ;
 int BWN_RFDATALO ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int KASSERT (int,char*) ;

uint16_t
bwn_phy_lp_rf_read(struct bwn_mac *mac, uint16_t reg)
{

 KASSERT(reg != 1, ("unaccessible register %d", reg));
 if (mac->mac_phy.rev < 2 && reg != 0x4001)
  reg |= 0x100;
 if (mac->mac_phy.rev >= 2)
  reg |= 0x200;
 BWN_WRITE_2(mac, BWN_RFCTL, reg);
 return BWN_READ_2(mac, BWN_RFDATALO);
}
