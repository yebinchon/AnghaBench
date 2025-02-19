
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_mac {int dummy; } ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;


 int B2055_C1_B0NB_RSSIVCM ;
 int B2055_C1_RX_BB_RSSICTL5 ;
 int B2055_C2_B0NB_RSSIVCM ;
 int B2055_C2_RX_BB_RSSICTL5 ;
 int BWN_RF_SETMASK (struct bwn_mac*,int ,int,int) ;
 int N_RSSI_NB ;

__attribute__((used)) static void bwn_nphy_set_rssi_2055_vcm(struct bwn_mac *mac,
           enum n_rssi_type rssi_type, uint8_t *buf)
{
 int i;
 for (i = 0; i < 2; i++) {
  if (rssi_type == N_RSSI_NB) {
   if (i == 0) {
    BWN_RF_SETMASK(mac, B2055_C1_B0NB_RSSIVCM,
        0xFC, buf[0]);
    BWN_RF_SETMASK(mac, B2055_C1_RX_BB_RSSICTL5,
        0xFC, buf[1]);
   } else {
    BWN_RF_SETMASK(mac, B2055_C2_B0NB_RSSIVCM,
        0xFC, buf[2 * i]);
    BWN_RF_SETMASK(mac, B2055_C2_RX_BB_RSSICTL5,
        0xFC, buf[2 * i + 1]);
   }
  } else {
   if (i == 0)
    BWN_RF_SETMASK(mac, B2055_C1_RX_BB_RSSICTL5,
        0xF3, buf[0] << 2);
   else
    BWN_RF_SETMASK(mac, B2055_C2_RX_BB_RSSICTL5,
        0xF3, buf[2 * i + 1] << 2);
  }
 }
}
