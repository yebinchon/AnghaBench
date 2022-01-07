
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_RELEASE_MSI (int ,int ,int,int*) ;
 int device_get_parent (int ) ;

int
pcib_release_msi(device_t pcib, device_t dev, int count, int *irqs)
{
 device_t bus;

 bus = device_get_parent(pcib);
 return (PCIB_RELEASE_MSI(device_get_parent(bus), dev, count, irqs));
}
