
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pcib_gen_softc {int ops_node; } ;
typedef int phandle_t ;
typedef int device_t ;


 struct ofw_pcib_gen_softc* device_get_softc (int ) ;

phandle_t
ofw_pcib_gen_get_node(device_t bridge, device_t dev)
{
 struct ofw_pcib_gen_softc *sc;

 sc = device_get_softc(bridge);
 return (sc->ops_node);
}
