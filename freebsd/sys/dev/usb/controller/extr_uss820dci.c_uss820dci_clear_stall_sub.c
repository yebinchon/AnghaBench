
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct uss820dci_softc {int sc_bus; } ;


 scalar_t__ UE_CONTROL ;
 scalar_t__ UE_DIR_IN ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USS820_EPCON ;
 int USS820_EPCON_RXIE ;
 int USS820_EPCON_RXSTL ;
 int USS820_EPCON_TXOE ;
 int USS820_EPCON_TXSTL ;
 int USS820_EPINDEX ;
 scalar_t__ USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_RXCON ;
 scalar_t__ USS820_RXCON_RXCLR ;
 scalar_t__ USS820_RXCON_RXFFRC ;
 int USS820_RXSTAT ;
 int USS820_RXSTAT_RXSOVW ;
 int USS820_TXCON ;
 scalar_t__ USS820_TXCON_TXCLR ;
 int USS820_TXSTAT ;
 scalar_t__ USS820_TXSTAT_TXSOVW ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,scalar_t__) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
uss820dci_clear_stall_sub(struct uss820dci_softc *sc,
    uint8_t ep_no, uint8_t ep_type, uint8_t ep_dir)
{
 uint8_t temp;

 if (ep_type == UE_CONTROL) {

  return;
 }
 USB_BUS_SPIN_LOCK(&sc->sc_bus);


 USS820_WRITE_1(sc, USS820_EPINDEX, ep_no);


 if (ep_dir == UE_DIR_IN) {
  temp = 0xFF ^ (USS820_EPCON_TXOE |
      USS820_EPCON_TXSTL);
 } else {
  temp = 0xFF ^ (USS820_EPCON_RXIE |
      USS820_EPCON_RXSTL);
 }
 uss820dci_update_shared_1(sc, USS820_EPCON, temp, 0);

 if (ep_dir == UE_DIR_IN) {

  USS820_WRITE_1(sc, USS820_TXSTAT,
      USS820_TXSTAT_TXSOVW);


  temp = USS820_READ_1(sc, USS820_TXCON);
  temp |= USS820_TXCON_TXCLR;
  USS820_WRITE_1(sc, USS820_TXCON, temp);
  temp &= ~USS820_TXCON_TXCLR;
  USS820_WRITE_1(sc, USS820_TXCON, temp);
 } else {


  uss820dci_update_shared_1(sc, USS820_RXSTAT,
      0, USS820_RXSTAT_RXSOVW);


  temp = USS820_READ_1(sc, USS820_RXCON);
  temp |= USS820_RXCON_RXCLR;
  temp &= ~USS820_RXCON_RXFFRC;
  USS820_WRITE_1(sc, USS820_RXCON, temp);
  temp &= ~USS820_RXCON_RXCLR;
  USS820_WRITE_1(sc, USS820_RXCON, temp);
 }
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
}
