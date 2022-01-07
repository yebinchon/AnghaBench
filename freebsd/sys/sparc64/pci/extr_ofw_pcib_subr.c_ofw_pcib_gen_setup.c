
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct ofw_pcib_gen_softc {scalar_t__ ops_node; int ops_iinfo; TYPE_1__ ops_pcib_sc; } ;
typedef int ofw_pci_intr_t ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 struct ofw_pcib_gen_softc* device_get_softc (int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ofw_bus_setup_iinfo (scalar_t__,int *,int) ;

void
ofw_pcib_gen_setup(device_t bridge)
{
 struct ofw_pcib_gen_softc *sc;

 sc = device_get_softc(bridge);
 sc->ops_pcib_sc.dev = bridge;
 sc->ops_node = ofw_bus_get_node(bridge);
 KASSERT(sc->ops_node != 0,
     ("ofw_pcib_gen_setup: no ofw pci parent bus!"));

 ofw_bus_setup_iinfo(sc->ops_node, &sc->ops_iinfo,
     sizeof(ofw_pci_intr_t));
}
