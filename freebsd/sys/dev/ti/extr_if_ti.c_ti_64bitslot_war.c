
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {scalar_t__ ti_hwrev; } ;


 int CSR_READ_4 (struct ti_softc*,int) ;
 int CSR_WRITE_4 (struct ti_softc*,int,int) ;
 int EINVAL ;
 scalar_t__ TI_HWREV_TIGON ;
 int TI_PCISTATE_32BIT_BUS ;
 int TI_PCI_STATE ;
 int TI_SETBIT (struct ti_softc*,int,int) ;

__attribute__((used)) static int
ti_64bitslot_war(struct ti_softc *sc)
{

 if (!(CSR_READ_4(sc, TI_PCI_STATE) & TI_PCISTATE_32BIT_BUS)) {
  CSR_WRITE_4(sc, 0x600, 0);
  CSR_WRITE_4(sc, 0x604, 0);
  CSR_WRITE_4(sc, 0x600, 0x5555AAAA);
  if (CSR_READ_4(sc, 0x604) == 0x5555AAAA) {
   if (sc->ti_hwrev == TI_HWREV_TIGON)
    return (EINVAL);
   else {
    TI_SETBIT(sc, TI_PCI_STATE,
        TI_PCISTATE_32BIT_BUS);
    return (0);
   }
  }
 }

 return (0);
}
