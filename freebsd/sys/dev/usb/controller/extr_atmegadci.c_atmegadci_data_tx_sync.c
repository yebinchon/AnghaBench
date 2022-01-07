
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct atmegadci_td {int ep_no; int pc; } ;
struct atmegadci_softc {int sc_dv_addr; } ;


 struct atmegadci_softc* ATMEGA_PC2SC (int ) ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UEIENX_RXSTPE ;
 int ATMEGA_UEIENX_TXINE ;
 int ATMEGA_UEINTX ;
 int ATMEGA_UEINTX_RXSTPI ;
 int ATMEGA_UENUM ;
 int ATMEGA_UESTA0X ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int atmegadci_set_address (struct atmegadci_softc*,int) ;

__attribute__((used)) static uint8_t
atmegadci_data_tx_sync(struct atmegadci_td *td)
{
 struct atmegadci_softc *sc;
 uint8_t temp;


 sc = ATMEGA_PC2SC(td->pc);


 ATMEGA_WRITE_1(sc, ATMEGA_UENUM, td->ep_no);


 temp = ATMEGA_READ_1(sc, ATMEGA_UEINTX);

 DPRINTFN(5, "temp=0x%02x\n", temp);

 if (temp & ATMEGA_UEINTX_RXSTPI) {
  DPRINTFN(5, "faking complete\n");

  return (0);
 }




 temp = ATMEGA_READ_1(sc, ATMEGA_UESTA0X);
 if (temp & 3) {

  goto not_complete;
 }
 if (sc->sc_dv_addr != 0xFF) {

  atmegadci_set_address(sc, sc->sc_dv_addr);
 }
 return (0);

not_complete:

 ATMEGA_WRITE_1(sc, ATMEGA_UEIENX,
     ATMEGA_UEIENX_RXSTPE | ATMEGA_UEIENX_TXINE);
 return (1);
}
