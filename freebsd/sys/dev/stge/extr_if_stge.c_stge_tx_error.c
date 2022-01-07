
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stge_softc {scalar_t__ sc_nerr; int sc_dev; } ;


 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int MC_MASK ;
 int MC_TxEnable ;
 int STGE_MACCtrl ;
 scalar_t__ STGE_MAXERR ;
 int STGE_TxStatus ;
 int TS_LateCollision ;
 int TS_MaxCollisions ;
 int TS_TxComplete ;
 int TS_TxUnderrun ;
 int device_printf (int ,char*) ;

__attribute__((used)) static __inline int
stge_tx_error(struct stge_softc *sc)
{
 uint32_t txstat;
 int error;

 for (error = 0;;) {
  txstat = CSR_READ_4(sc, STGE_TxStatus);
  if ((txstat & TS_TxComplete) == 0)
   break;

  if ((txstat & TS_TxUnderrun) != 0) {





   if (sc->sc_nerr++ < STGE_MAXERR)
    device_printf(sc->sc_dev, "Tx underrun, "
        "resetting...\n");
   if (sc->sc_nerr == STGE_MAXERR)
    device_printf(sc->sc_dev, "too many errors; "
        "not reporting any more\n");
   error = -1;
   break;
  }

  if ((txstat & (TS_MaxCollisions|TS_LateCollision)) != 0)
   CSR_WRITE_4(sc, STGE_MACCtrl,
       (CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK) |
       MC_TxEnable);
 }

 return (error);
}
