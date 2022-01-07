
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENODEV ;
 int * msi_vmem ;
 int vmem_xfree (int *,int,int) ;

__attribute__((used)) static int fsl_pcib_release_msi(device_t dev, device_t child,
    int count, int *irqs)
{
 if (msi_vmem == ((void*)0))
  return (ENODEV);

 vmem_xfree(msi_vmem, irqs[0], count);
 return (0);
}
