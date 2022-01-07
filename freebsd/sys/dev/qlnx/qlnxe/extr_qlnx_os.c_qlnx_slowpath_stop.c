
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_dev {int num_hwfns; } ;
struct TYPE_3__ {int ** sp_irq; int * sp_irq_rid; int ** sp_handle; struct ecore_dev cdev; int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int ecore_hw_stop (struct ecore_dev*) ;
 int ecore_resc_free (struct ecore_dev*) ;

__attribute__((used)) static int
qlnx_slowpath_stop(qlnx_host_t *ha)
{
 struct ecore_dev *cdev;
 device_t dev = ha->pci_dev;
 int i;

 cdev = &ha->cdev;

 ecore_hw_stop(cdev);

  for (i = 0; i < ha->cdev.num_hwfns; i++) {

         if (ha->sp_handle[i])
                 (void)bus_teardown_intr(dev, ha->sp_irq[i],
    ha->sp_handle[i]);

  ha->sp_handle[i] = ((void*)0);

         if (ha->sp_irq[i])
   (void) bus_release_resource(dev, SYS_RES_IRQ,
    ha->sp_irq_rid[i], ha->sp_irq[i]);
  ha->sp_irq[i] = ((void*)0);
 }

        ecore_resc_free(cdev);

        return 0;
}
