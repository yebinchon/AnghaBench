
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct bwn_phy_n {scalar_t__ hang_avoid; } ;
struct TYPE_2__ {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_NPHY_TABLE_ADDR ;
 int BWN_NPHY_TABLE_DATAHI ;
 int BWN_NPHY_TABLE_DATALO ;
 int BWN_NTAB16 (int,int) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int BWN_SHARED ;
 int BWN_SHM_SH_NPHY_TXPWR_INDX0 ;
 int BWN_SHM_SH_NPHY_TXPWR_INDX1 ;
 int bwn_nphy_stay_in_carrier_search (struct bwn_mac*,int) ;
 int bwn_ntab_read_bulk (struct bwn_mac*,int ,int,int*) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;
 int* loscale ;

__attribute__((used)) static void bwn_nphy_tx_pwr_ctrl_coef_setup(struct bwn_mac *mac)
{
 struct bwn_phy_n *nphy = mac->mac_phy.phy_n;
 int i, j;
 uint32_t tmp;
 uint32_t cur_real, cur_imag, real_part, imag_part;

 uint16_t buffer[7];

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 1);

 bwn_ntab_read_bulk(mac, BWN_NTAB16(15, 80), 7, buffer);

 for (i = 0; i < 2; i++) {
  tmp = ((buffer[i * 2] & 0x3FF) << 10) |
   (buffer[i * 2 + 1] & 0x3FF);
  BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_ADDR,
    (((i + 26) << 10) | 320));
  for (j = 0; j < 128; j++) {
   BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_DATAHI,
     ((tmp >> 16) & 0xFFFF));
   BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_DATALO,
     (tmp & 0xFFFF));
  }
 }

 for (i = 0; i < 2; i++) {
  tmp = buffer[5 + i];
  real_part = (tmp >> 8) & 0xFF;
  imag_part = (tmp & 0xFF);
  BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_ADDR,
    (((i + 26) << 10) | 448));

  if (mac->mac_phy.rev >= 3) {
   cur_real = real_part;
   cur_imag = imag_part;
   tmp = ((cur_real & 0xFF) << 8) | (cur_imag & 0xFF);
  }

  for (j = 0; j < 128; j++) {
   if (mac->mac_phy.rev < 3) {
    cur_real = (real_part * loscale[j] + 128) >> 8;
    cur_imag = (imag_part * loscale[j] + 128) >> 8;
    tmp = ((cur_real & 0xFF) << 8) |
     (cur_imag & 0xFF);
   }
   BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_DATAHI,
     ((tmp >> 16) & 0xFFFF));
   BWN_PHY_WRITE(mac, BWN_NPHY_TABLE_DATALO,
     (tmp & 0xFFFF));
  }
 }

 if (mac->mac_phy.rev >= 3) {
  bwn_shm_write_2(mac, BWN_SHARED,
    BWN_SHM_SH_NPHY_TXPWR_INDX0, 0xFFFF);
  bwn_shm_write_2(mac, BWN_SHARED,
    BWN_SHM_SH_NPHY_TXPWR_INDX1, 0xFFFF);
 }

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 0);
}
