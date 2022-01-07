
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct bwn_phy_lp {int plp_rccap; } ;
struct TYPE_2__ {int rev; struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_B2062_N_RXBB_CALIB2 ;
 int BWN_B2062_N_TXCTL_A ;
 int BWN_B2062_S_RXG_CNT16 ;
 int BWN_RF_WRITE (struct bwn_mac*,int ,int) ;
 int MAX (int,int) ;
 int MIN (int,int) ;

__attribute__((used)) static void
bwn_phy_lp_set_rccap(struct bwn_mac *mac)
{
 struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
 uint8_t rc_cap = (plp->plp_rccap & 0x1f) >> 1;

 if (mac->mac_phy.rev == 1)
  rc_cap = MIN(rc_cap + 5, 15);

 BWN_RF_WRITE(mac, BWN_B2062_N_RXBB_CALIB2,
     MAX(plp->plp_rccap - 4, 0x80));
 BWN_RF_WRITE(mac, BWN_B2062_N_TXCTL_A, rc_cap | 0x80);
 BWN_RF_WRITE(mac, BWN_B2062_S_RXG_CNT16,
     ((plp->plp_rccap & 0x1f) >> 2) | 0x80);
}
