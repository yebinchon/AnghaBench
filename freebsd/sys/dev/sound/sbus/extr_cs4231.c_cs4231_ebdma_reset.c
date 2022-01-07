
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_burst; int sc_dev; } ;


 int CS_TIMEOUT ;
 int DELAY (int) ;
 int EBDCSR_DRAIN ;
 int EBDCSR_INTEN ;
 int EBDCSR_NEXTEN ;
 int EBDCSR_RESET ;
 int EBDMA_C_READ (struct cs4231_softc*,int ) ;
 int EBDMA_C_WRITE (struct cs4231_softc*,int ,int) ;
 int EBDMA_DCSR ;
 int EBDMA_P_READ (struct cs4231_softc*,int ) ;
 int EBDMA_P_WRITE (struct cs4231_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
cs4231_ebdma_reset(struct cs4231_softc *sc)
{
 int i;


 EBDMA_P_WRITE(sc, EBDMA_DCSR,
     EBDMA_P_READ(sc, EBDMA_DCSR) & ~(EBDCSR_INTEN | EBDCSR_NEXTEN));
 EBDMA_P_WRITE(sc, EBDMA_DCSR, EBDCSR_RESET);
 for (i = CS_TIMEOUT;
     i && EBDMA_P_READ(sc, EBDMA_DCSR) & EBDCSR_DRAIN; i--)
  DELAY(1);
 if (i == 0)
  device_printf(sc->sc_dev,
      "timeout waiting for playback DMA reset\n");
 EBDMA_P_WRITE(sc, EBDMA_DCSR, sc->sc_burst);

 EBDMA_C_WRITE(sc, EBDMA_DCSR,
     EBDMA_C_READ(sc, EBDMA_DCSR) & ~(EBDCSR_INTEN | EBDCSR_NEXTEN));
 EBDMA_C_WRITE(sc, EBDMA_DCSR, EBDCSR_RESET);
 for (i = CS_TIMEOUT;
     i && EBDMA_C_READ(sc, EBDMA_DCSR) & EBDCSR_DRAIN; i--)
  DELAY(1);
 if (i == 0)
  device_printf(sc->sc_dev,
      "timeout waiting for capture DMA reset\n");
 EBDMA_C_WRITE(sc, EBDMA_DCSR, sc->sc_burst);
}
