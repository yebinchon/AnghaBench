
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stge_softc {int sc_dev; } ;


 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_1 (struct stge_softc*,int ,int) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int DELAY (int) ;
 int MC_MASK ;
 int MC_RxEnable ;
 int MC_RxEnabled ;
 int STGE_MACCtrl ;
 int STGE_RxDMAPollPeriod ;
 int STGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
stge_start_rx(struct stge_softc *sc)
{
 uint32_t v;
 int i;

 v = CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK;
 if ((v & MC_RxEnabled) != 0)
  return;
 v |= MC_RxEnable;
 CSR_WRITE_4(sc, STGE_MACCtrl, v);
 CSR_WRITE_1(sc, STGE_RxDMAPollPeriod, 1);
 for (i = STGE_TIMEOUT; i > 0; i--) {
  DELAY(10);
  v = CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK;
  if ((v & MC_RxEnabled) != 0)
   break;
 }
 if (i == 0)
  device_printf(sc->sc_dev, "Starting Rx MAC timed out\n");
}
