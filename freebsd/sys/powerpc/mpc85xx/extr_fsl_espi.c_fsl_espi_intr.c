
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsl_espi_softc {int sc_flags; int sc_dev; } ;


 int ESPI_SPIE ;
 int ESPI_SPIE_DON ;
 int FSL_ESPI_BUSY ;
 int FSL_ESPI_LOCK (struct fsl_espi_softc*) ;
 int FSL_ESPI_READ (struct fsl_espi_softc*,int ) ;
 int FSL_ESPI_UNLOCK (struct fsl_espi_softc*) ;
 int FSL_ESPI_WRITE (struct fsl_espi_softc*,int ,int) ;
 int fsl_espi_drain_fifo (struct fsl_espi_softc*) ;
 int fsl_espi_fill_fifo (struct fsl_espi_softc*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
fsl_espi_intr(void *arg)
{
 struct fsl_espi_softc *sc;
 uint32_t spie;

 sc = (struct fsl_espi_softc *)arg;
 FSL_ESPI_LOCK(sc);


 if ((sc->sc_flags & FSL_ESPI_BUSY) == 0) {
  FSL_ESPI_UNLOCK(sc);
  return;
 }
 spie = FSL_ESPI_READ(sc, ESPI_SPIE);
 FSL_ESPI_WRITE(sc, ESPI_SPIE, spie);


 fsl_espi_fill_fifo(sc);


 fsl_espi_drain_fifo(sc);


 if (spie & ESPI_SPIE_DON)
  wakeup(sc->sc_dev);

 FSL_ESPI_UNLOCK(sc);
}
