
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ffec_softc {int dev; } ;


 int FEC_IER_EBERR ;
 int FEC_IER_REG ;
 int FEC_IER_RXF ;
 int FEC_IER_TXF ;
 int FFEC_LOCK (struct ffec_softc*) ;
 int FFEC_UNLOCK (struct ffec_softc*) ;
 int RD4 (struct ffec_softc*,int ) ;
 int WR4 (struct ffec_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 int ffec_init_locked (struct ffec_softc*) ;
 int ffec_rxfinish_locked (struct ffec_softc*) ;
 int ffec_stop_locked (struct ffec_softc*) ;
 int ffec_txfinish_locked (struct ffec_softc*) ;

__attribute__((used)) static void
ffec_intr(void *arg)
{
 struct ffec_softc *sc;
 uint32_t ier;

 sc = arg;

 FFEC_LOCK(sc);

 ier = RD4(sc, FEC_IER_REG);

 if (ier & FEC_IER_TXF) {
  WR4(sc, FEC_IER_REG, FEC_IER_TXF);
  ffec_txfinish_locked(sc);
 }

 if (ier & FEC_IER_RXF) {
  WR4(sc, FEC_IER_REG, FEC_IER_RXF);
  ffec_rxfinish_locked(sc);
 }
 if (ier & FEC_IER_EBERR) {
  WR4(sc, FEC_IER_REG, FEC_IER_EBERR);
  device_printf(sc->dev,
      "Ethernet DMA error, restarting controller.\n");
  ffec_stop_locked(sc);
  ffec_init_locked(sc);
 }

 FFEC_UNLOCK(sc);

}
