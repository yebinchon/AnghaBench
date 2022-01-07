
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_rf {scalar_t__ rf_type; int rf_rev; } ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {TYPE_1__ mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;


 int BWI_MAC_STATUS ;
 scalar_t__ BWI_RF_T_BCM2050 ;
 int CSR_READ_2 (struct bwi_softc*,int) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int,int) ;
 int DELAY (int) ;
 scalar_t__ IEEE80211_MODE_11A ;
 int PACKET_LEN ;
 int RF_WRITE (struct bwi_mac*,int,int) ;
 int TMPLT_WRITE_4 (struct bwi_mac*,int,int const) ;

void
bwi_mac_dummy_xmit(struct bwi_mac *mac)
{

 static const uint32_t packet_11a[5] =
 { 0x000201cc, 0x00d40000, 0x00000000, 0x01000000, 0x00000000 };
 static const uint32_t packet_11bg[5] =
 { 0x000b846e, 0x00d40000, 0x00000000, 0x01000000, 0x00000000 };

 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_rf *rf = &mac->mac_rf;
 const uint32_t *packet;
 uint16_t val_50c;
 int wait_max, i;

 if (mac->mac_phy.phy_mode == IEEE80211_MODE_11A) {
  wait_max = 30;
  packet = packet_11a;
  val_50c = 1;
 } else {
  wait_max = 250;
  packet = packet_11bg;
  val_50c = 0;
 }

 for (i = 0; i < 5; ++i)
  TMPLT_WRITE_4(mac, i * 4, packet[i]);

 CSR_READ_4(sc, BWI_MAC_STATUS);

 CSR_WRITE_2(sc, 0x568, 0);
 CSR_WRITE_2(sc, 0x7c0, 0);
 CSR_WRITE_2(sc, 0x50c, val_50c);
 CSR_WRITE_2(sc, 0x508, 0);
 CSR_WRITE_2(sc, 0x50a, 0);
 CSR_WRITE_2(sc, 0x54c, 0);
 CSR_WRITE_2(sc, 0x56a, 0x14);
 CSR_WRITE_2(sc, 0x568, 0x826);
 CSR_WRITE_2(sc, 0x500, 0);
 CSR_WRITE_2(sc, 0x502, 0x30);

 if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev <= 5)
  RF_WRITE(mac, 0x51, 0x17);

 for (i = 0; i < wait_max; ++i) {
  if (CSR_READ_2(sc, 0x50e) & 0x80)
   break;
  DELAY(10);
 }
 for (i = 0; i < 10; ++i) {
  if (CSR_READ_2(sc, 0x50e) & 0x400)
   break;
  DELAY(10);
 }
 for (i = 0; i < 10; ++i) {
  if ((CSR_READ_2(sc, 0x690) & 0x100) == 0)
   break;
  DELAY(10);
 }

 if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev <= 5)
  RF_WRITE(mac, 0x51, 0x37);

}
