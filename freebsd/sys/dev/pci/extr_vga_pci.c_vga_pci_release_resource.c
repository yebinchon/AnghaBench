
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vga_resource {int vr_refs; struct resource* vr_res; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int KASSERT (int,char*) ;


 int bus_release_resource (int ,int,int,struct resource*) ;
 int device_get_softc (int ) ;
 struct vga_resource* lookup_res (int ,int) ;

__attribute__((used)) static int
vga_pci_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct vga_resource *vr;
 int error;

 switch (type) {
 case 128:
 case 129:




  vr = lookup_res(device_get_softc(dev), rid);
  if (vr == ((void*)0))
   return (EINVAL);
  if (vr->vr_res == ((void*)0))
   return (EINVAL);
  KASSERT(vr->vr_res == r, ("vga_pci resource mismatch"));
  if (vr->vr_refs > 1) {
   vr->vr_refs--;
   return (0);
  }
  KASSERT(vr->vr_refs > 0,
      ("vga_pci resource reference count underflow"));
  error = bus_release_resource(dev, type, rid, r);
  if (error == 0) {
   vr->vr_res = ((void*)0);
   vr->vr_refs = 0;
  }
  return (error);
 }

 return (bus_release_resource(dev, type, rid, r));
}
