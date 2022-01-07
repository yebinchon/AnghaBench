
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smuiic_softc {int sc_busno; scalar_t__ sc_iic_inuse; int sc_mtx; } ;
typedef int device_t ;


 int MTX_DEF ;
 int OF_getprop (int ,char*,int *,int) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct smuiic_softc* device_get_softc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
smuiic_attach(device_t dev)
{
 struct smuiic_softc *sc = device_get_softc(dev);
 mtx_init(&sc->sc_mtx, "smuiic", ((void*)0), MTX_DEF);
 sc->sc_iic_inuse = 0;


 OF_getprop(ofw_bus_get_node(dev), "reg", &sc->sc_busno,
     sizeof(sc->sc_busno));


 device_add_child(dev, "iicbus", -1);

 return (bus_generic_attach(dev));
}
