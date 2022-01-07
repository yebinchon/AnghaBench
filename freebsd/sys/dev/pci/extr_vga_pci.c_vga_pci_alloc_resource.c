
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vga_resource {struct resource* vr_res; int vr_refs; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;




 struct resource* bus_alloc_resource (int ,int,int*,int ,int ,int ,int ) ;
 int device_get_softc (int ) ;
 struct vga_resource* lookup_res (int ,int) ;

__attribute__((used)) static struct resource *
vga_pci_alloc_resource(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct vga_resource *vr;

 switch (type) {
 case 128:
 case 129:




  vr = lookup_res(device_get_softc(dev), *rid);
  if (vr == ((void*)0))
   return (((void*)0));
  if (vr->vr_res == ((void*)0))
   vr->vr_res = bus_alloc_resource(dev, type, rid, start,
       end, count, flags);
  if (vr->vr_res != ((void*)0))
   vr->vr_refs++;
  return (vr->vr_res);
 }
 return (bus_alloc_resource(dev, type, rid, start, end, count, flags));
}
