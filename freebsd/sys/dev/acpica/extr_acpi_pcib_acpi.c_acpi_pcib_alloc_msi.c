
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_ALLOC_MSI (int ,int ,int,int,int*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
acpi_pcib_alloc_msi(device_t pcib, device_t dev, int count, int maxcount,
    int *irqs)
{
 device_t bus;

 bus = device_get_parent(pcib);
 return (PCIB_ALLOC_MSI(device_get_parent(bus), dev, count, maxcount,
     irqs));
}
