
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct usb_ether {int dummy; } ;
struct TYPE_2__ {int* ue_eaddr; int ue_dev; } ;
struct smsc_softc {int sc_phyno; TYPE_1__ sc_ue; } ;
typedef scalar_t__ mac_l ;
typedef scalar_t__ mac_h ;


 int ETHER_ADDR_LEN ;
 int ETHER_IS_VALID (int*) ;
 int SMSC_MAC_ADDRH ;
 int SMSC_MAC_ADDRL ;
 int memset (int*,int,int ) ;
 int read_random (int*,int ) ;
 int smsc_chip_init (struct smsc_softc*) ;
 int smsc_dbg_printf (struct smsc_softc*,char*) ;
 int smsc_eeprom_read (struct smsc_softc*,int,int*,int ) ;
 scalar_t__ smsc_read_reg (struct smsc_softc*,int ,int*) ;
 struct smsc_softc* uether_getsc (struct usb_ether*) ;
 int usb_fdt_get_mac_addr (int ,TYPE_1__*) ;

__attribute__((used)) static void
smsc_attach_post(struct usb_ether *ue)
{
 struct smsc_softc *sc = uether_getsc(ue);
 uint32_t mac_h, mac_l;
 int err;

 smsc_dbg_printf(sc, "smsc_attach_post\n");


 sc->sc_phyno = 1;






 memset(sc->sc_ue.ue_eaddr, 0xff, ETHER_ADDR_LEN);


 if ((smsc_read_reg(sc, SMSC_MAC_ADDRL, &mac_l) == 0) &&
     (smsc_read_reg(sc, SMSC_MAC_ADDRH, &mac_h) == 0)) {
  sc->sc_ue.ue_eaddr[5] = (uint8_t)((mac_h >> 8) & 0xff);
  sc->sc_ue.ue_eaddr[4] = (uint8_t)((mac_h) & 0xff);
  sc->sc_ue.ue_eaddr[3] = (uint8_t)((mac_l >> 24) & 0xff);
  sc->sc_ue.ue_eaddr[2] = (uint8_t)((mac_l >> 16) & 0xff);
  sc->sc_ue.ue_eaddr[1] = (uint8_t)((mac_l >> 8) & 0xff);
  sc->sc_ue.ue_eaddr[0] = (uint8_t)((mac_l) & 0xff);
 }




 if (!ETHER_IS_VALID(sc->sc_ue.ue_eaddr)) {

  err = smsc_eeprom_read(sc, 0x01, sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN);




  if ((err != 0) || (!ETHER_IS_VALID(sc->sc_ue.ue_eaddr))) {
   read_random(sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN);
   sc->sc_ue.ue_eaddr[0] &= ~0x01;
   sc->sc_ue.ue_eaddr[0] |= 0x02;
  }
 }


 smsc_chip_init(sc);
}
