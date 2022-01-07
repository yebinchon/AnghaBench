
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int xen_msi_alloc (int ,int,int,int*) ;

__attribute__((used)) static int
nexus_xen_alloc_msi(device_t pcib, device_t dev, int count, int maxcount, int *irqs)
{

 return (xen_msi_alloc(dev, count, maxcount, irqs));
}
