
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenisrc {int xi_pirq; } ;
struct physdev_unmap_pirq {int pirq; } ;


 int ENXIO ;
 int HYPERVISOR_physdev_op (int ,struct physdev_unmap_pirq*) ;
 int PHYSDEVOP_unmap_pirq ;
 scalar_t__ intr_lookup_source (int) ;
 int xen_intr_release_isrc (struct xenisrc*) ;

int
xen_release_msi(int vector)
{
 struct physdev_unmap_pirq unmap;
 struct xenisrc *isrc;
 int ret;

 isrc = (struct xenisrc *)intr_lookup_source(vector);
 if (isrc == ((void*)0))
  return (ENXIO);

 unmap.pirq = isrc->xi_pirq;
 ret = HYPERVISOR_physdev_op(PHYSDEVOP_unmap_pirq, &unmap);
 if (ret != 0)
  return (ret);

 xen_intr_release_isrc(isrc);

 return (0);
}
