
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_rxbuf_hdr {int rxh_flags1; scalar_t__ rxh_rssi; } ;
struct bwi_mac {int dummy; } ;


 int BWI_RXH_F1_BCM2053_RSSI ;
 int le16toh (int ) ;

__attribute__((used)) static int
bwi_rf_calc_rssi_bcm2053(struct bwi_mac *mac, const struct bwi_rxbuf_hdr *hdr)
{
 uint16_t flags1;
 int rssi;

 rssi = (((int)hdr->rxh_rssi - 11) * 103) / 64;

 flags1 = le16toh(hdr->rxh_flags1);
 if (flags1 & BWI_RXH_F1_BCM2053_RSSI)
  rssi -= 109;
 else
  rssi -= 83;
 return rssi;
}
