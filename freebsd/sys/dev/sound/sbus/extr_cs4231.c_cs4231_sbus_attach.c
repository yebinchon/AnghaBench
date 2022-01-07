
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_burst; int sc_nmres; int sc_nires; int sc_flags; int sc_dev; } ;
typedef int device_t ;


 int CS4231_SBUS ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SBUS_BURST_16 ;
 int SBUS_BURST_32 ;
 int SBUS_BURST_64 ;
 int cs4231_attach_common (struct cs4231_softc*) ;
 struct cs4231_softc* malloc (int,int ,int) ;
 int sbus_get_burstsz (int ) ;

__attribute__((used)) static int
cs4231_sbus_attach(device_t dev)
{
 struct cs4231_softc *sc;
 int burst;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->sc_dev = dev;




 burst = sbus_get_burstsz(sc->sc_dev);
 if ((burst & SBUS_BURST_64))
  sc->sc_burst = 64;
 else if ((burst & SBUS_BURST_32))
  sc->sc_burst = 32;
 else if ((burst & SBUS_BURST_16))
  sc->sc_burst = 16;
 else
  sc->sc_burst = 0;
 sc->sc_flags = CS4231_SBUS;
 sc->sc_nmres = 1;
 sc->sc_nires = 1;
 return cs4231_attach_common(sc);
}
