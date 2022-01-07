
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mk48txx_softc {int sc_res; } ;
typedef int device_t ;


 int bus_read_1 (int ,int) ;
 struct mk48txx_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
mk48txx_def_nvrd(device_t dev, int off)
{
 struct mk48txx_softc *sc;

 sc = device_get_softc(dev);
 return (bus_read_1(sc->sc_res, off));
}
