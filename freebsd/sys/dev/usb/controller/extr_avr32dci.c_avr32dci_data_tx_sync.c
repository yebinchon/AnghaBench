
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct avr32dci_td {int ep_no; int pc; } ;
struct avr32dci_softc {int sc_dv_addr; } ;


 int AVR32_EPTSTA (int ) ;
 scalar_t__ AVR32_EPTSTA_BUSY_BANK_STA (int) ;
 int AVR32_EPTSTA_RX_SETUP ;
 struct avr32dci_softc* AVR32_PC2SC (int ) ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int DPRINTFN (int,char*,...) ;
 int avr32dci_set_address (struct avr32dci_softc*,int) ;

__attribute__((used)) static uint8_t
avr32dci_data_tx_sync(struct avr32dci_td *td)
{
 struct avr32dci_softc *sc;
 uint32_t temp;


 sc = AVR32_PC2SC(td->pc);


 temp = AVR32_READ_4(sc, AVR32_EPTSTA(td->ep_no));

 DPRINTFN(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

 if (temp & AVR32_EPTSTA_RX_SETUP) {
  DPRINTFN(5, "faking complete\n");

  return (0);
 }




 if (AVR32_EPTSTA_BUSY_BANK_STA(temp) != 0) {

  goto not_complete;
 }
 if (sc->sc_dv_addr != 0xFF) {

  avr32dci_set_address(sc, sc->sc_dv_addr);
 }
 return (0);

not_complete:
 return (1);
}
