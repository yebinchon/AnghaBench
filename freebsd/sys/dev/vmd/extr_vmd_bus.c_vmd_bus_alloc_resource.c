
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vmd_softc {struct resource** vmd_regs_resource; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int PCIR_MEMBASE_1 ;
 int PCIR_PMBASEL_1 ;
 int SYS_RES_MEMORY ;
 int device_get_parent (int ) ;
 struct vmd_softc* device_get_softc (int ) ;
 struct resource* pci_alloc_resource (int ,int ,int,int*,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
vmd_bus_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct vmd_softc *sc;

 sc = device_get_softc(device_get_parent(dev));

 if (type == SYS_RES_MEMORY) {

  if (*rid == PCIR_MEMBASE_1) {
   return (sc->vmd_regs_resource[1]);
  } else if (*rid == PCIR_PMBASEL_1) {
   return (sc->vmd_regs_resource[2]);
  } else {
   return (sc->vmd_regs_resource[2]);
  }
 }
 return (pci_alloc_resource(dev, child, type, rid, start, end,
    count, flags));
}
