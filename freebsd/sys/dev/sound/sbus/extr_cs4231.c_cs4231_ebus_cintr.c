
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct cs4231_channel {int togo; int nextaddr; int channel; int buffer; } ;
struct cs4231_softc {struct cs4231_channel sc_rch; int sc_dev; } ;


 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_TEST_AND_INIT ;
 int EBDCSR_ERR ;
 int EBDCSR_INT ;
 int EBDCSR_TC ;
 int EBDMA_C_READ (struct cs4231_softc*,int ) ;
 int EBDMA_C_WRITE (struct cs4231_softc*,int ,int) ;
 int EBDMA_DADDR ;
 int EBDMA_DCSR ;
 int chn_intr (int ) ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int device_printf (int ,char*,int ) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static void
cs4231_ebus_cintr(void *arg)
{
 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 u_int32_t csr;
 u_int8_t status;

 sc = arg;
 CS4231_LOCK(sc);

 csr = EBDMA_C_READ(sc, EBDMA_DCSR);
 if ((csr & EBDCSR_INT) == 0) {
  CS4231_UNLOCK(sc);
  return;
 }
 if ((csr & EBDCSR_ERR)) {
  status = cs4231_read(sc, CS_TEST_AND_INIT);
  device_printf(sc->sc_dev,
      "dma error interrupt : stat = 0x%x\n", status);
 }
 EBDMA_C_WRITE(sc, EBDMA_DCSR, csr | EBDCSR_TC);

 ch = ((void*)0);
 if (csr & EBDCSR_TC) {
  u_long nextaddr, saddr;
  u_int32_t togo;

  ch = &sc->sc_rch;
  togo = ch->togo;
  saddr = sndbuf_getbufaddr(ch->buffer);
  nextaddr = ch->nextaddr + togo;
  if (nextaddr >= saddr + sndbuf_getblksz(ch->buffer))
   nextaddr = saddr;




  EBDMA_C_WRITE(sc, EBDMA_DADDR, nextaddr);
  ch->nextaddr = nextaddr;
 }
 CS4231_UNLOCK(sc);
 if (ch)
  chn_intr(ch->channel);
}
