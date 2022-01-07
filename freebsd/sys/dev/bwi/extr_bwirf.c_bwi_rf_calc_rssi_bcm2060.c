
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_rxbuf_hdr {int rxh_rssi; } ;
struct bwi_mac {int dummy; } ;



__attribute__((used)) static int
bwi_rf_calc_rssi_bcm2060(struct bwi_mac *mac, const struct bwi_rxbuf_hdr *hdr)
{
 int rssi;

 rssi = hdr->rxh_rssi;
 if (rssi > 127)
  rssi -= 256;
 return rssi;
}
