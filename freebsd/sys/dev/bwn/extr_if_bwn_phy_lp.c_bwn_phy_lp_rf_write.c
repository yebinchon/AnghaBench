
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_RFCTL ;
 int BWN_RFDATALO ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int KASSERT (int,char*) ;

void
bwn_phy_lp_rf_write(struct bwn_mac *mac, uint16_t reg, uint16_t value)
{

 KASSERT(reg != 1, ("unaccessible register %d", reg));
 BWN_WRITE_2(mac, BWN_RFCTL, reg);
 BWN_WRITE_2(mac, BWN_RFDATALO, value);
}
