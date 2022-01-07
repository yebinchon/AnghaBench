
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct alc_softc {int alc_flags; int alc_dev; } ;


 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_IDLE_STATUS ;
 int ALC_RXQ_CFG ;
 int ALC_TIMEOUT ;
 int ALC_TXQ_CFG ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int IDLE_STATUS_RXQ ;
 int IDLE_STATUS_TXQ ;
 int RXQ_CFG_ENB ;
 int RXQ_CFG_QUEUE0_ENB ;
 int TXQ_CFG_ENB ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
alc_stop_queue(struct alc_softc *sc)
{
 uint32_t reg;
 int i;


 reg = CSR_READ_4(sc, ALC_RXQ_CFG);
 if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) == 0) {
  if ((reg & RXQ_CFG_ENB) != 0) {
   reg &= ~RXQ_CFG_ENB;
   CSR_WRITE_4(sc, ALC_RXQ_CFG, reg);
  }
 } else {
  if ((reg & RXQ_CFG_QUEUE0_ENB) != 0) {
   reg &= ~RXQ_CFG_QUEUE0_ENB;
   CSR_WRITE_4(sc, ALC_RXQ_CFG, reg);
  }
 }

 reg = CSR_READ_4(sc, ALC_TXQ_CFG);
 if ((reg & TXQ_CFG_ENB) != 0) {
  reg &= ~TXQ_CFG_ENB;
  CSR_WRITE_4(sc, ALC_TXQ_CFG, reg);
 }
 DELAY(40);
 for (i = ALC_TIMEOUT; i > 0; i--) {
  reg = CSR_READ_4(sc, ALC_IDLE_STATUS);
  if ((reg & (IDLE_STATUS_RXQ | IDLE_STATUS_TXQ)) == 0)
   break;
  DELAY(10);
 }
 if (i == 0)
  device_printf(sc->alc_dev,
      "could not disable RxQ/TxQ (0x%08x)!\n", reg);
}
