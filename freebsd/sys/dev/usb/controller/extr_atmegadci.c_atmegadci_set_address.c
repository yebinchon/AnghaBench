
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct atmegadci_softc {int dummy; } ;


 int ATMEGA_UDADDR ;
 int ATMEGA_UDADDR_ADDEN ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int ) ;
 int DPRINTFN (int,char*,int ) ;

__attribute__((used)) static void
atmegadci_set_address(struct atmegadci_softc *sc, uint8_t addr)
{
 DPRINTFN(5, "addr=%d\n", addr);

 addr |= ATMEGA_UDADDR_ADDEN;

 ATMEGA_WRITE_1(sc, ATMEGA_UDADDR, addr);
}
