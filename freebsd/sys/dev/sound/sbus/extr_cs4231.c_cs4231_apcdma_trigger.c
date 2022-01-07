
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cs4231_softc {int sc_dev; } ;
struct cs4231_channel {int locked; scalar_t__ dir; int togo; int nextaddr; int buffer; } ;


 int APC_CNC ;
 int APC_CNVA ;
 int APC_CSR ;
 int APC_CSR_CD ;
 int APC_CSR_CDMA_GO ;
 int APC_CSR_CIE ;
 int APC_CSR_CMIE ;
 int APC_CSR_CPAUSE ;
 int APC_CSR_EI ;
 int APC_CSR_EIE ;
 int APC_CSR_GIE ;
 int APC_CSR_PD ;
 int APC_CSR_PDMA_GO ;
 int APC_CSR_PIE ;
 int APC_CSR_PMIE ;
 int APC_CSR_PPAUSE ;
 int APC_PNC ;
 int APC_PNVA ;
 int APC_READ (struct cs4231_softc*,int ) ;
 int APC_WRITE (struct cs4231_softc*,int ,int) ;
 int CAPTURE_ENABLE ;
 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_MAX_APC_DMA_SZ ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_INTERFACE_CONFIG ;
 int CS_TEST_AND_INIT ;
 int DPRINTF (char*) ;
 scalar_t__ PCMDIR_PLAY ;
 int PLAYBACK_ENABLE ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int cs4231_write (struct cs4231_softc*,int ,int) ;
 int device_printf (int ,char*,char*) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
cs4231_apcdma_trigger(struct cs4231_softc *sc, struct cs4231_channel *ch)
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
 if (togo > CS4231_MAX_APC_DMA_SZ)
  togo = CS4231_MAX_APC_DMA_SZ;
 ch->togo = togo;
 if (ch->dir == PCMDIR_PLAY) {
  DPRINTF(("TRG: PNVA = 0x%x, togo = 0x%x\n", nextaddr, togo));

  cs4231_read(sc, CS_TEST_AND_INIT);
  csr = APC_READ(sc, APC_CSR);
  APC_WRITE(sc, APC_PNVA, nextaddr);
  APC_WRITE(sc, APC_PNC, togo);

  if ((csr & APC_CSR_PDMA_GO) == 0 ||
      (csr & APC_CSR_PPAUSE) != 0) {
   APC_WRITE(sc, APC_CSR, APC_READ(sc, APC_CSR) &
       ~(APC_CSR_PIE | APC_CSR_PPAUSE));
   APC_WRITE(sc, APC_CSR, APC_READ(sc, APC_CSR) |
       APC_CSR_GIE | APC_CSR_PIE | APC_CSR_EIE |
       APC_CSR_EI | APC_CSR_PMIE | APC_CSR_PDMA_GO);
   cs4231_write(sc, CS_INTERFACE_CONFIG,
       cs4231_read(sc, CS_INTERFACE_CONFIG) |
       PLAYBACK_ENABLE);
  }

  if (APC_READ(sc, APC_CSR) & APC_CSR_PD) {
   nextaddr += togo;
   APC_WRITE(sc, APC_PNVA, nextaddr);
   APC_WRITE(sc, APC_PNC, togo);
  }
 } else {
  DPRINTF(("TRG: CNVA = 0x%x, togo = 0x%x\n", nextaddr, togo));

  cs4231_read(sc, CS_TEST_AND_INIT);
  APC_WRITE(sc, APC_CNVA, nextaddr);
  APC_WRITE(sc, APC_CNC, togo);
  csr = APC_READ(sc, APC_CSR);
  if ((csr & APC_CSR_CDMA_GO) == 0 ||
      (csr & APC_CSR_CPAUSE) != 0) {
   csr &= APC_CSR_CPAUSE;
   csr |= APC_CSR_GIE | APC_CSR_CMIE | APC_CSR_CIE |
       APC_CSR_EI | APC_CSR_CDMA_GO;
   APC_WRITE(sc, APC_CSR, csr);
   cs4231_write(sc, CS_INTERFACE_CONFIG,
       cs4231_read(sc, CS_INTERFACE_CONFIG) |
       CAPTURE_ENABLE);
  }

  if (APC_READ(sc, APC_CSR) & APC_CSR_CD) {
   nextaddr += togo;
   APC_WRITE(sc, APC_CNVA, nextaddr);
   APC_WRITE(sc, APC_CNC, togo);
  }
 }
 ch->nextaddr = nextaddr;
 ch->locked = 1;
 CS4231_UNLOCK(sc);
}
