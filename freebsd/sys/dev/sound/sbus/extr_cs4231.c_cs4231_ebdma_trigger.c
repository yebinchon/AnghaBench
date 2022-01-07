
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cs4231_softc {int sc_burst; int sc_dev; } ;
struct cs4231_channel {int locked; scalar_t__ dir; int togo; int nextaddr; int buffer; } ;


 int CAPTURE_ENABLE ;
 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_INTERFACE_CONFIG ;
 int CS_TEST_AND_INIT ;
 int DPRINTF (char*) ;
 int EBDCSR_A_LOADED ;
 int EBDCSR_BURST_1 ;
 int EBDCSR_BURST_16 ;
 int EBDCSR_BURST_4 ;
 int EBDCSR_BURST_8 ;
 int EBDCSR_CNTEN ;
 int EBDCSR_DMAEN ;
 int EBDCSR_INTEN ;
 int EBDCSR_NEXTEN ;
 int EBDCSR_RESET ;
 int EBDCSR_WRITE ;
 int EBDMA_C_READ (struct cs4231_softc*,int ) ;
 int EBDMA_C_WRITE (struct cs4231_softc*,int ,int) ;
 int EBDMA_DADDR ;
 int EBDMA_DCNT ;
 int EBDMA_DCSR ;
 int EBDMA_P_READ (struct cs4231_softc*,int ) ;
 int EBDMA_P_WRITE (struct cs4231_softc*,int ,int) ;
 scalar_t__ PCMDIR_PLAY ;
 int PLAYBACK_ENABLE ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int cs4231_write (struct cs4231_softc*,int ,int) ;
 int device_printf (int ,char*,char*) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
cs4231_ebdma_trigger(struct cs4231_softc *sc, struct cs4231_channel *ch)
{
 u_int32_t csr, togo;
 u_int32_t nextaddr;

 CS4231_LOCK(sc);
 if (ch->locked) {
  device_printf(sc->sc_dev, "%s channel already triggered\n",
      ch->dir == PCMDIR_PLAY ? "playback" : "capture");
  CS4231_UNLOCK(sc);
  return;
 }

 nextaddr = sndbuf_getbufaddr(ch->buffer);
 togo = sndbuf_getsize(ch->buffer) / 2;
 if (togo % 64 == 0)
  sc->sc_burst = EBDCSR_BURST_16;
 else if (togo % 32 == 0)
  sc->sc_burst = EBDCSR_BURST_8;
 else if (togo % 16 == 0)
  sc->sc_burst = EBDCSR_BURST_4;
 else
  sc->sc_burst = EBDCSR_BURST_1;
 ch->togo = togo;
 DPRINTF(("TRG: DNAR = 0x%x, togo = 0x%x\n", nextaddr, togo));
 if (ch->dir == PCMDIR_PLAY) {
  cs4231_read(sc, CS_TEST_AND_INIT);
  csr = EBDMA_P_READ(sc, EBDMA_DCSR);

  if (csr & EBDCSR_DMAEN) {
   EBDMA_P_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_P_WRITE(sc, EBDMA_DADDR, nextaddr);
  } else {
   EBDMA_P_WRITE(sc, EBDMA_DCSR, EBDCSR_RESET);
   EBDMA_P_WRITE(sc, EBDMA_DCSR, sc->sc_burst);
   EBDMA_P_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_P_WRITE(sc, EBDMA_DADDR, nextaddr);

   EBDMA_P_WRITE(sc, EBDMA_DCSR, sc->sc_burst |
       EBDCSR_DMAEN | EBDCSR_INTEN | EBDCSR_CNTEN |
       EBDCSR_NEXTEN);
   cs4231_write(sc, CS_INTERFACE_CONFIG,
       cs4231_read(sc, CS_INTERFACE_CONFIG) |
       PLAYBACK_ENABLE);
  }

  if (EBDMA_P_READ(sc, EBDMA_DCSR) & EBDCSR_A_LOADED) {
   nextaddr += togo;
   EBDMA_P_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_P_WRITE(sc, EBDMA_DADDR, nextaddr);
  }
 } else {
  cs4231_read(sc, CS_TEST_AND_INIT);
  csr = EBDMA_C_READ(sc, EBDMA_DCSR);

  if (csr & EBDCSR_DMAEN) {
   EBDMA_C_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_C_WRITE(sc, EBDMA_DADDR, nextaddr);
  } else {
   EBDMA_C_WRITE(sc, EBDMA_DCSR, EBDCSR_RESET);
   EBDMA_C_WRITE(sc, EBDMA_DCSR, sc->sc_burst);
   EBDMA_C_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_C_WRITE(sc, EBDMA_DADDR, nextaddr);

   EBDMA_C_WRITE(sc, EBDMA_DCSR, sc->sc_burst |
       EBDCSR_WRITE | EBDCSR_DMAEN | EBDCSR_INTEN |
       EBDCSR_CNTEN | EBDCSR_NEXTEN);
   cs4231_write(sc, CS_INTERFACE_CONFIG,
       cs4231_read(sc, CS_INTERFACE_CONFIG) |
       CAPTURE_ENABLE);
  }

  if (EBDMA_C_READ(sc, EBDMA_DCSR) & EBDCSR_A_LOADED) {
   nextaddr += togo;
   EBDMA_C_WRITE(sc, EBDMA_DCNT, togo);
   EBDMA_C_WRITE(sc, EBDMA_DADDR, nextaddr);
  }
 }
 ch->nextaddr = nextaddr;
 ch->locked = 1;
 CS4231_UNLOCK(sc);
}
