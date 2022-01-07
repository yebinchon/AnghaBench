
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiic_softc {int sc_node; } ;
typedef int phandle_t ;
typedef int device_t ;


 struct kiic_softc* device_get_softc (int ) ;

__attribute__((used)) static phandle_t
kiic_get_node(device_t bus, device_t dev)
{
 struct kiic_softc *sc;

 sc = device_get_softc(bus);


 return sc->sc_node;
}
