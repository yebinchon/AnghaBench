
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int ENXIO ;
 int M_NTB ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (int*,int ) ;
 int* malloc (int,int ,int) ;
 scalar_t__ ntb_prefer_intx ;
 int pci_remap_msix (int ,int,int*) ;

__attribute__((used)) static int
intel_ntb_remap_msix(device_t dev, uint32_t desired, uint32_t avail)
{
 u_int *vectors;
 uint32_t i;
 int rc;

 if (ntb_prefer_intx != 0)
  return (ENXIO);

 vectors = malloc(desired * sizeof(*vectors), M_NTB, M_ZERO | M_WAITOK);

 for (i = 0; i < desired; i++)
  vectors[i] = (i % avail) + 1;

 rc = pci_remap_msix(dev, desired, vectors);
 free(vectors, M_NTB);
 return (rc);
}
