
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct cs4231_channel {int togo; int nextaddr; int channel; int buffer; } ;
struct cs4231_softc {struct cs4231_channel sc_pch; int sc_dev; } ;


 int CS4231_LOCK (struct cs4231_softc*) ;
 int CS4231_UNLOCK (struct cs4231_softc*) ;
 int CS_TEST_AND_INIT ;
 int EBDCSR_ERR ;
 int EBDCSR_INT ;
 int EBDCSR_TC ;
 int EBDMA_DADDR ;
 int EBDMA_DCSR ;
 int EBDMA_P_READ (struct cs4231_softc*,int ) ;
 int EBDMA_P_WRITE (struct cs4231_softc*,int ,int) ;
 int chn_intr (int ) ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int device_printf (int ,char*,int ) ;
 int sndbuf_getbufaddr (int ) ;
 int sndbuf_getsize (int ) ;

__attribute__((used)) static void
cs4231_ebus_pintr(void *arg)
{
 struct cs4231_softc *sc;
 struct cs4231_channel *ch;
 u_int32_t csr;
 u_int8_t status;

 sc = arg;
 CS4231_LOCK(sc);

 csr = EBDMA_P_READ(sc, EBDMA_DCSR);
 if ((csr & EBDCSR_INT) == 0) {
  CS4231_UNLOCK(sc);
  return;
 }

 if ((csr & EBDCSR_ERR)) {
  status = cs4231_read(sc, CS_TEST_AND_INIT);
  device_printf(sc->sc_dev,
      "ebdma error interrupt : stat = 0x%x\n", status);
 }
 EBDMA_P_WRITE(sc, EBDMA_DCSR, csr | EBDCSR_TC);

 ch = ((void*)0);
 if (csr & EBDCSR_TC) {
  u_long nextaddr, saddr;
  u_int32_t togo;

  ch = &sc->sc_pch;
  togo = ch->togo;
  saddr = sndbuf_getbufaddr(ch->buffer);
  nextaddr = ch->nextaddr + togo;
  if (nextaddr >= saddr + sndbuf_getsize(ch->buffer))
   nextaddr = saddr;




  EBDMA_P_WRITE(sc, EBDMA_DADDR, nextaddr);
  ch->nextaddr = nextaddr;
 }
 CS4231_UNLOCK(sc);
 if (ch)
  chn_intr(ch->channel);
}
