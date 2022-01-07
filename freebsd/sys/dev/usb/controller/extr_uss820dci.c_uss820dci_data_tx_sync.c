
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uss820dci_td {scalar_t__ ep_index; int error; int remainder; } ;
struct uss820dci_softc {int sc_dv_addr; } ;


 int DPRINTFN (int,char*,...) ;
 int USS820_EPINDEX ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_RXSTAT ;
 int USS820_RXSTAT_EDOVW ;
 int USS820_RXSTAT_RXSETUP ;
 int USS820_RXSTAT_RXSOVW ;
 int USS820_TXFLG ;
 int USS820_TXFLG_TXFIF0 ;
 int USS820_TXFLG_TXFIF1 ;
 int USS820_TXFLG_TXOVF ;
 int USS820_TXFLG_TXURF ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,scalar_t__) ;
 int uss820dci_set_address (struct uss820dci_softc*,int) ;

__attribute__((used)) static uint8_t
uss820dci_data_tx_sync(struct uss820dci_softc *sc, struct uss820dci_td *td)
{
 uint8_t rx_stat;
 uint8_t tx_flag;


 USS820_WRITE_1(sc, USS820_EPINDEX, td->ep_index);


 tx_flag = USS820_READ_1(sc, USS820_TXFLG);

 if (td->ep_index == 0) {

  rx_stat = USS820_READ_1(sc, USS820_RXSTAT);

  DPRINTFN(5, "rx_stat=0x%02x rem=%u\n", rx_stat, td->remainder);

  if (rx_stat & (USS820_RXSTAT_RXSETUP |
      USS820_RXSTAT_RXSOVW |
      USS820_RXSTAT_EDOVW)) {
   DPRINTFN(5, "faking complete\n");

   return (0);
  }
 }
 DPRINTFN(5, "tx_flag=0x%02x rem=%u\n", tx_flag, td->remainder);

 if (tx_flag & (USS820_TXFLG_TXOVF |
     USS820_TXFLG_TXURF)) {
  td->error = 1;
  return (0);
 }
 if (tx_flag & (USS820_TXFLG_TXFIF0 |
     USS820_TXFLG_TXFIF1)) {
  return (1);
 }
 if (td->ep_index == 0 && sc->sc_dv_addr != 0xFF) {

  uss820dci_set_address(sc, sc->sc_dv_addr);
 }
 return (0);
}
