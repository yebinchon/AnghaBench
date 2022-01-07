
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int xen_msix_release (int) ;

__attribute__((used)) static int
nexus_xen_release_msix(device_t pcib, device_t dev, int irq)
{

 return (xen_msix_release(irq));
}
