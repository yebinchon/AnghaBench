
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ofw_pcib_softc {int ops_iinfo; int ops_node; TYPE_1__ ops_pcib_sc; } ;
typedef int device_t ;
typedef int cell_t ;


 struct ofw_pcib_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_setup_iinfo (int ,int *,int) ;
 int pcib_attach_child (int ) ;
 int pcib_attach_common (int ) ;

__attribute__((used)) static int
ofw_pcib_pci_attach(device_t dev)
{
 struct ofw_pcib_softc *sc;

 sc = device_get_softc(dev);
 sc->ops_pcib_sc.dev = dev;
 sc->ops_node = ofw_bus_get_node(dev);

 ofw_bus_setup_iinfo(sc->ops_node, &sc->ops_iinfo,
     sizeof(cell_t));

 pcib_attach_common(dev);
 return (pcib_attach_child(dev));
}
