
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int device_t ;


 int xen_msi_map (int,int *,int *) ;

__attribute__((used)) static int
nexus_xen_map_msi(device_t pcib, device_t dev, int irq, uint64_t *addr, uint32_t *data)
{

 return (xen_msi_map(irq, addr, data));
}
