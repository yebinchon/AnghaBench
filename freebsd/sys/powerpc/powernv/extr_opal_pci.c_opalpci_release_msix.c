
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int opalpci_release_msi (int ,int ,int,int*) ;

__attribute__((used)) static int
opalpci_release_msix(device_t dev, device_t child, int irq)
{
 return (opalpci_release_msi(dev, child, 1, &irq));
}
