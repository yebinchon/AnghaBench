
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct avr32dci_softc {int dummy; } ;


 int AVR32_CTRL_DEV_FADDR_EN ;
 int DPRINTFN (int,char*,int) ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int,int ) ;

__attribute__((used)) static void
avr32dci_set_address(struct avr32dci_softc *sc, uint8_t addr)
{
 DPRINTFN(5, "addr=%d\n", addr);

 avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_FADDR_EN | addr, 0);
}
