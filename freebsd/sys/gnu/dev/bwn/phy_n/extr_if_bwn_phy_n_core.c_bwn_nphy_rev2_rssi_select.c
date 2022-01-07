
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;


 int BWN_NPHY_AFECTL_C1 ;
 int BWN_NPHY_AFECTL_C2 ;
 int BWN_NPHY_AFECTL_OVER ;
 int BWN_NPHY_RFCTL_CMD ;
 int BWN_NPHY_RFCTL_CMD_CORESEL ;
 int BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT ;
 int BWN_NPHY_RFCTL_CMD_RXEN ;
 int BWN_NPHY_RFCTL_CMD_START ;
 int BWN_NPHY_RFCTL_OVER ;
 int BWN_NPHY_RFCTL_RSSIO1 ;
 int BWN_NPHY_RFCTL_RSSIO2 ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 int DELAY (int) ;






__attribute__((used)) static void bwn_nphy_rev2_rssi_select(struct bwn_mac *mac, uint8_t code,
          enum n_rssi_type rssi_type)
{
 uint16_t val;
 bool rssi_w1_w2_nb = 0;

 switch (rssi_type) {
 case 129:
 case 128:
 case 131:
  val = 0;
  rssi_w1_w2_nb = 1;
  break;
 case 130:
  val = 1;
  break;
 case 132:
  val = 2;
  break;
 default:
  val = 3;
 }

 val = (val << 12) | (val << 14);
 BWN_PHY_SETMASK(mac, BWN_NPHY_AFECTL_C1, 0x0FFF, val);
 BWN_PHY_SETMASK(mac, BWN_NPHY_AFECTL_C2, 0x0FFF, val);

 if (rssi_w1_w2_nb) {
  BWN_PHY_SETMASK(mac, BWN_NPHY_RFCTL_RSSIO1, 0xFFCF,
    (rssi_type + 1) << 4);
  BWN_PHY_SETMASK(mac, BWN_NPHY_RFCTL_RSSIO2, 0xFFCF,
    (rssi_type + 1) << 4);
 }

 if (code == 0) {
  BWN_PHY_MASK(mac, BWN_NPHY_AFECTL_OVER, ~0x3000);
  if (rssi_w1_w2_nb) {
   BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_CMD,
    ~(BWN_NPHY_RFCTL_CMD_RXEN |
      BWN_NPHY_RFCTL_CMD_CORESEL));
   BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_OVER,
    ~(0x1 << 12 |
      0x1 << 5 |
      0x1 << 1 |
      0x1));
   BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_CMD,
    ~BWN_NPHY_RFCTL_CMD_START);
   DELAY(20);
   BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_OVER, ~0x1);
  }
 } else {
  BWN_PHY_SET(mac, BWN_NPHY_AFECTL_OVER, 0x3000);
  if (rssi_w1_w2_nb) {
   BWN_PHY_SETMASK(mac, BWN_NPHY_RFCTL_CMD,
    ~(BWN_NPHY_RFCTL_CMD_RXEN |
      BWN_NPHY_RFCTL_CMD_CORESEL),
    (BWN_NPHY_RFCTL_CMD_RXEN |
     code << BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT));
   BWN_PHY_SET(mac, BWN_NPHY_RFCTL_OVER,
    (0x1 << 12 |
      0x1 << 5 |
      0x1 << 1 |
      0x1));
   BWN_PHY_SET(mac, BWN_NPHY_RFCTL_CMD,
    BWN_NPHY_RFCTL_CMD_START);
   DELAY(20);
   BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_OVER, ~0x1);
  }
 }
}
