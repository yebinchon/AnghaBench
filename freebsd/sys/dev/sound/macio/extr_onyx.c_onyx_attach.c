
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onyx_softc {int sc_addr; void* sc_dev; } ;
typedef void* device_t ;


 struct onyx_softc* device_get_softc (void*) ;
 void* i2s_mixer ;
 int * i2s_mixer_class ;
 int iicbus_get_addr (void*) ;
 int onyx_mixer_class ;

__attribute__((used)) static int
onyx_attach(device_t dev)
{
 struct onyx_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);

 i2s_mixer_class = &onyx_mixer_class;
 i2s_mixer = dev;

 return (0);
}
