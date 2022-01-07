
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct avr32dci_softc {int dummy; } ;


 int AVR32_IEN ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int ) ;

__attribute__((used)) static void
avr32dci_mod_ien(struct avr32dci_softc *sc, uint32_t set, uint32_t clear)
{
 uint32_t temp;

 temp = AVR32_READ_4(sc, AVR32_IEN);
 temp |= set;
 temp &= ~clear;
 AVR32_WRITE_4(sc, AVR32_IEN, temp);
}
