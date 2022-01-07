
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_eaddr; } ;
struct rue_softc {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int RUE_EEPROM_IDR0 ;
 int rue_read_mem (struct rue_softc*,int ,int ,int ) ;
 int rue_reset (struct rue_softc*) ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
rue_attach_post(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);


 rue_reset(sc);


 rue_read_mem(sc, RUE_EEPROM_IDR0, ue->ue_eaddr, ETHER_ADDR_LEN);
}
