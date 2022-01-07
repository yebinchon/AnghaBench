
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint32_t ;
struct usb_ether {int* ue_eaddr; int ue_dev; } ;
struct muge_softc {int dummy; } ;
typedef scalar_t__ mac_l ;
typedef scalar_t__ mac_h ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_VALID (int*) ;
 int ETH_E2P_MAC_OFFSET ;
 int ETH_RX_ADDRH ;
 int ETH_RX_ADDRL ;
 int OTP_MAC_OFFSET ;
 int arc4rand (int*,int ,int ) ;
 scalar_t__ lan78xx_eeprom_present (struct muge_softc*) ;
 scalar_t__ lan78xx_eeprom_read_raw (struct muge_softc*,int ,int*,int ) ;
 scalar_t__ lan78xx_otp_read (struct muge_softc*,int ,int*,int ) ;
 scalar_t__ lan78xx_read_reg (struct muge_softc*,int ,int*) ;
 int memset (int*,int,int ) ;
 int muge_dbg_printf (struct muge_softc*,char*) ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;
 int usb_fdt_get_mac_addr (int ,struct usb_ether*) ;

__attribute__((used)) static void
muge_set_mac_addr(struct usb_ether *ue)
{
 struct muge_softc *sc = uether_getsc(ue);
 uint32_t mac_h, mac_l;

 memset(ue->ue_eaddr, 0xff, ETHER_ADDR_LEN);

 uint32_t val;
 lan78xx_read_reg(sc, 0, &val);


 if ((lan78xx_read_reg(sc, ETH_RX_ADDRL, &mac_l) == 0) &&
     (lan78xx_read_reg(sc, ETH_RX_ADDRH, &mac_h) == 0)) {
  ue->ue_eaddr[5] = (uint8_t)((mac_h >> 8) & 0xff);
  ue->ue_eaddr[4] = (uint8_t)((mac_h) & 0xff);
  ue->ue_eaddr[3] = (uint8_t)((mac_l >> 24) & 0xff);
  ue->ue_eaddr[2] = (uint8_t)((mac_l >> 16) & 0xff);
  ue->ue_eaddr[1] = (uint8_t)((mac_l >> 8) & 0xff);
  ue->ue_eaddr[0] = (uint8_t)((mac_l) & 0xff);
 }






 if (ETHER_IS_VALID(ue->ue_eaddr)) {
  muge_dbg_printf(sc, "MAC assigned from registers\n");
 } else if (lan78xx_eeprom_present(sc) && lan78xx_eeprom_read_raw(sc,
     ETH_E2P_MAC_OFFSET, ue->ue_eaddr, ETHER_ADDR_LEN) == 0 &&
     ETHER_IS_VALID(ue->ue_eaddr)) {
  muge_dbg_printf(sc, "MAC assigned from EEPROM\n");
 } else if (lan78xx_otp_read(sc, OTP_MAC_OFFSET, ue->ue_eaddr,
     ETHER_ADDR_LEN) == 0 && ETHER_IS_VALID(ue->ue_eaddr)) {
  muge_dbg_printf(sc, "MAC assigned from OTP\n");
 }
 if (!ETHER_IS_VALID(ue->ue_eaddr)) {
  muge_dbg_printf(sc, "MAC assigned randomly\n");
  arc4rand(ue->ue_eaddr, ETHER_ADDR_LEN, 0);
  ue->ue_eaddr[0] &= ~0x01;
  ue->ue_eaddr[0] |= 0x02;
 }
}
