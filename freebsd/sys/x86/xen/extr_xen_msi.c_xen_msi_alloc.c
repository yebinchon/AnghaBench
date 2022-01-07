
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int first_msi_irq ;
 scalar_t__ msi_last_irq ;
 int msi_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nexus_add_irq (int) ;
 scalar_t__ num_msi_irqs ;
 int xen_register_msi (int ,int,int) ;

int
xen_msi_alloc(device_t dev, int count, int maxcount, int *irqs)
{
 int i, ret = 0;

 mtx_lock(&msi_lock);


 if (msi_last_irq + count > num_msi_irqs) {
  mtx_unlock(&msi_lock);
  return (ENXIO);
 }


 for (i = 0; i < count; i++)
  irqs[i] = first_msi_irq + msi_last_irq++;

 mtx_unlock(&msi_lock);

 ret = xen_register_msi(dev, irqs[0], count);
 if (ret != 0)
  return (ret);

 for (i = 0; i < count; i++)
  nexus_add_irq(irqs[i]);

 return (0);
}
