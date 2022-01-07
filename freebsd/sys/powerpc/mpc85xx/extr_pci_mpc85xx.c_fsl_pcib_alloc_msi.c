
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_addr_t ;
struct fsl_pcib_softc {int dummy; } ;
typedef int device_t ;


 int ENODEV ;
 int M_BESTFIT ;
 int M_WAITOK ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_MIN ;
 struct fsl_pcib_softc* device_get_softc (int ) ;
 int * msi_vmem ;
 int powerof2 (int) ;
 int vmem_xalloc (int *,int,int ,int ,int ,int ,int ,int,int*) ;

__attribute__((used)) static int fsl_pcib_alloc_msi(device_t dev, device_t child,
    int count, int maxcount, int *irqs)
{
 struct fsl_pcib_softc *sc;
 vmem_addr_t start;
 int err, i;

 sc = device_get_softc(dev);
 if (msi_vmem == ((void*)0))
  return (ENODEV);

 err = vmem_xalloc(msi_vmem, count, powerof2(count), 0, 0,
     VMEM_ADDR_MIN, VMEM_ADDR_MAX, M_BESTFIT | M_WAITOK, &start);

 if (err)
  return (err);

 for (i = 0; i < count; i++)
  irqs[i] = start + i;

 return (0);
}
