
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_release_msi (int) ;

int
xen_msi_release(int *irqs, int count)
{
 int i, ret;

 for (i = 0; i < count; i++) {
  ret = xen_release_msi(irqs[i]);
  if (ret != 0)
   return (ret);
 }

 return (0);
}
