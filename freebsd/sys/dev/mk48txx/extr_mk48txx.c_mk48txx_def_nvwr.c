
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mk48txx_softc {int sc_res; } ;
typedef int device_t ;


 int bus_write_1 (int ,int,int ) ;
 struct mk48txx_softc* device_get_softc (int ) ;

__attribute__((used)) static void
mk48txx_def_nvwr(device_t dev, int off, uint8_t v)
{
 struct mk48txx_softc *sc;

 sc = device_get_softc(dev);
 bus_write_1(sc->sc_res, off, v);
}
