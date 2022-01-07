
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int xlp_pcie_link (int ,int ) ;

__attribute__((used)) static int
xlp_alloc_msi(device_t pcib, device_t dev, int count, int maxcount, int *irqs)
{
 int i, link;







 link = xlp_pcie_link(pcib, dev);
 if (link == -1)
  return (ENXIO);





 for (i = 0; i < count; i++)
  irqs[i] = 64 + link * 32 + i;

 return (0);
}
