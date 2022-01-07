
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct psycho_softc {int sc_ign; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int INTMAP_VEC (int ,int ) ;
 int SYS_RES_IRQ ;
 struct psycho_softc* device_get_softc (int ) ;
 struct resource* ofw_pci_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
psycho_alloc_resource(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct psycho_softc *sc;

 if (type == SYS_RES_IRQ) {
  sc = device_get_softc(bus);
  start = end = INTMAP_VEC(sc->sc_ign, end);
 }
 return (ofw_pci_alloc_resource(bus, child, type, rid, start, end,
     count, flags));
}
