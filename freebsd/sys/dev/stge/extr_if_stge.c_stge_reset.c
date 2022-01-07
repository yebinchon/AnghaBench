
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stge_softc {int sc_led; int sc_dev; int sc_usefiber; } ;


 int AC_AutoInit ;
 int AC_DMA ;
 int AC_FIFO ;
 int AC_GlobalReset ;
 int AC_Host ;
 int AC_LEDMode ;
 int AC_LEDModeBit1 ;
 int AC_LEDSpeed ;
 int AC_Network ;
 int AC_ResetBusy ;
 int AC_RstOut ;
 int AC_RxReset ;
 int AC_TxReset ;
 int CSR_READ_1 (struct stge_softc*,int ) ;
 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_1 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int DELAY (int) ;
 int PS_MemLen ;
 int PS_MemLenb9b ;
 int PS_NonCompdet ;
 int STGE_AsicCtrl ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_PhySet ;



 int STGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
stge_reset(struct stge_softc *sc, uint32_t how)
{
 uint32_t ac;
 uint8_t v;
 int i, dv;

 STGE_LOCK_ASSERT(sc);

 dv = 5000;
 ac = CSR_READ_4(sc, STGE_AsicCtrl);
 switch (how) {
 case 128:
  ac |= AC_TxReset | AC_FIFO;
  dv = 100;
  break;
 case 129:
  ac |= AC_RxReset | AC_FIFO;
  dv = 100;
  break;
 case 130:
 default:





  ac |= AC_GlobalReset | AC_RxReset | AC_TxReset |
      AC_DMA | AC_FIFO | AC_Network | AC_Host | AC_AutoInit |
      (sc->sc_usefiber ? AC_RstOut : 0);
  break;
 }

 CSR_WRITE_4(sc, STGE_AsicCtrl, ac);


 DELAY(dv);

 for (i = 0; i < STGE_TIMEOUT; i++) {
  if ((CSR_READ_4(sc, STGE_AsicCtrl) & AC_ResetBusy) == 0)
   break;
  DELAY(dv);
 }

 if (i == STGE_TIMEOUT)
  device_printf(sc->sc_dev, "reset failed to complete\n");


 ac = CSR_READ_4(sc, STGE_AsicCtrl);
 ac &= ~(AC_LEDMode | AC_LEDSpeed | AC_LEDModeBit1);
 if ((sc->sc_led & 0x01) != 0)
  ac |= AC_LEDMode;
 if ((sc->sc_led & 0x03) != 0)
  ac |= AC_LEDModeBit1;
 if ((sc->sc_led & 0x08) != 0)
  ac |= AC_LEDSpeed;
 CSR_WRITE_4(sc, STGE_AsicCtrl, ac);


 v = CSR_READ_1(sc, STGE_PhySet);
 v &= ~(PS_MemLenb9b | PS_MemLen | PS_NonCompdet);
 v |= ((sc->sc_led & 0x70) >> 4);
 CSR_WRITE_1(sc, STGE_PhySet, v);
}
