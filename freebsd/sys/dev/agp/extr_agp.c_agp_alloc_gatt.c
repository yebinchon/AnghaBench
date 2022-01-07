
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;
struct agp_gatt {int ag_entries; void* ag_virtual; int ag_physical; } ;
typedef int device_t ;


 int AGP_GET_APERTURE (int ) ;
 int AGP_PAGE_SHIFT ;
 int M_AGP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int free (struct agp_gatt*,int ) ;
 scalar_t__ kmem_alloc_contig (int,int,int ,int ,int ,int ,int ) ;
 struct agp_gatt* malloc (int,int ,int) ;
 int vtophys (int ) ;

struct agp_gatt *
agp_alloc_gatt(device_t dev)
{
 u_int32_t apsize = AGP_GET_APERTURE(dev);
 u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
 struct agp_gatt *gatt;

 if (bootverbose)
  device_printf(dev,
         "allocating GATT for aperture of size %dM\n",
         apsize / (1024*1024));

 if (entries == 0) {
  device_printf(dev, "bad aperture size\n");
  return ((void*)0);
 }

 gatt = malloc(sizeof(struct agp_gatt), M_AGP, M_NOWAIT);
 if (!gatt)
  return 0;

 gatt->ag_entries = entries;
 gatt->ag_virtual = (void *)kmem_alloc_contig(entries *
     sizeof(u_int32_t), M_NOWAIT | M_ZERO, 0, ~0, PAGE_SIZE, 0,
     VM_MEMATTR_WRITE_COMBINING);
 if (!gatt->ag_virtual) {
  if (bootverbose)
   device_printf(dev, "contiguous allocation failed\n");
  free(gatt, M_AGP);
  return 0;
 }
 gatt->ag_physical = vtophys((vm_offset_t) gatt->ag_virtual);

 return gatt;
}
