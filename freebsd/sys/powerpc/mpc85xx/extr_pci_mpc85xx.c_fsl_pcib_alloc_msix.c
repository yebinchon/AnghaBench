
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int fsl_pcib_alloc_msi (int ,int ,int,int,int*) ;

__attribute__((used)) static int fsl_pcib_alloc_msix(device_t dev, device_t child, int *irq)
{
 return (fsl_pcib_alloc_msi(dev, child, 1, 1, irq));
}
