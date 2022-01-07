
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_flags; int sc_nires; int sc_nmres; int sc_burst; int sc_dev; } ;
typedef int device_t ;


 int CS4231_EBUS ;
 int CS4231_RES_IRQ_MAX ;
 int CS4231_RES_MEM_MAX ;
 int EBDCSR_BURST_1 ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int cs4231_attach_common (struct cs4231_softc*) ;
 int device_printf (int ,char*) ;
 struct cs4231_softc* malloc (int,int ,int) ;

__attribute__((used)) static int
cs4231_ebus_attach(device_t dev)
{
 struct cs4231_softc *sc;

 sc = malloc(sizeof(struct cs4231_softc), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc == ((void*)0)) {
  device_printf(dev, "cannot allocate softc\n");
  return (ENOMEM);
 }
 sc->sc_dev = dev;
 sc->sc_burst = EBDCSR_BURST_1;
 sc->sc_nmres = CS4231_RES_MEM_MAX;
 sc->sc_nires = CS4231_RES_IRQ_MAX;
 sc->sc_flags = CS4231_EBUS;
 return cs4231_attach_common(sc);
}
