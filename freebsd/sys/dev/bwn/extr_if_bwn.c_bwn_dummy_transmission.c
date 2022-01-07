
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bwn_softc {int sc_dev; } ;
struct bwn_phy {int type; int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;


 int BWN_ASSERT_LOCKED (struct bwn_softc*) ;



 int BWN_READ_2 (struct bwn_mac*,int) ;
 int BWN_RF_WRITE (struct bwn_mac*,int,int) ;
 int BWN_WRITE_2 (struct bwn_mac*,int,int) ;
 int DELAY (int) ;
 int bhnd_get_hwrev (int ) ;
 int bwn_ram_write (struct bwn_mac*,unsigned int,int) ;

void
bwn_dummy_transmission(struct bwn_mac *mac, int ofdm, int paon)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_softc *sc = mac->mac_sc;
 unsigned int i, max_loop;
 uint16_t value;
 uint32_t buffer[5] = {
  0x00000000, 0x00d40000, 0x00000000, 0x01000000, 0x00000000
 };

 if (ofdm) {
  max_loop = 0x1e;
  buffer[0] = 0x000201cc;
 } else {
  max_loop = 0xfa;
  buffer[0] = 0x000b846e;
 }

 BWN_ASSERT_LOCKED(mac->mac_sc);

 for (i = 0; i < 5; i++)
  bwn_ram_write(mac, i * 4, buffer[i]);

 BWN_WRITE_2(mac, 0x0568, 0x0000);
 BWN_WRITE_2(mac, 0x07c0,
     (bhnd_get_hwrev(sc->sc_dev) < 11) ? 0x0000 : 0x0100);

 value = (ofdm ? 0x41 : 0x40);
 BWN_WRITE_2(mac, 0x050c, value);

 if (phy->type == 128 || phy->type == 129 ||
     phy->type == 130)
  BWN_WRITE_2(mac, 0x0514, 0x1a02);
 BWN_WRITE_2(mac, 0x0508, 0x0000);
 BWN_WRITE_2(mac, 0x050a, 0x0000);
 BWN_WRITE_2(mac, 0x054c, 0x0000);
 BWN_WRITE_2(mac, 0x056a, 0x0014);
 BWN_WRITE_2(mac, 0x0568, 0x0826);
 BWN_WRITE_2(mac, 0x0500, 0x0000);



 switch (phy->type) {
 case 128:
 case 130:
  BWN_WRITE_2(mac, 0x0502, 0x00d0);
  break;
 case 129:
  BWN_WRITE_2(mac, 0x0502, 0x0050);
  break;
 default:
  BWN_WRITE_2(mac, 0x0502, 0x0030);
  break;
 }


 BWN_READ_2(mac, 0x0502);

 if (phy->rf_ver == 0x2050 && phy->rf_rev <= 0x5)
  BWN_RF_WRITE(mac, 0x0051, 0x0017);
 for (i = 0x00; i < max_loop; i++) {
  value = BWN_READ_2(mac, 0x050e);
  if (value & 0x0080)
   break;
  DELAY(10);
 }
 for (i = 0x00; i < 0x0a; i++) {
  value = BWN_READ_2(mac, 0x050e);
  if (value & 0x0400)
   break;
  DELAY(10);
 }
 for (i = 0x00; i < 0x19; i++) {
  value = BWN_READ_2(mac, 0x0690);
  if (!(value & 0x0100))
   break;
  DELAY(10);
 }
 if (phy->rf_ver == 0x2050 && phy->rf_rev <= 0x5)
  BWN_RF_WRITE(mac, 0x0051, 0x0037);
}
