
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_RELEASE_MSIX (int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
vmbus_release_msix(device_t bus, device_t dev, int irq)
{

 return (PCIB_RELEASE_MSIX(device_get_parent(bus), dev, irq));
}
