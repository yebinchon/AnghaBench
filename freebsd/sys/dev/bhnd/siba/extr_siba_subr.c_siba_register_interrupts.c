
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mapped; int rid; scalar_t__ irq; } ;
struct TYPE_4__ {int core_idx; } ;
struct TYPE_5__ {TYPE_1__ core_info; int intr_en; } ;
struct siba_devinfo {TYPE_3__ intr; int resources; TYPE_2__ core_id; } ;
typedef int device_t ;


 int BHND_BUS_MAP_INTR (int ,int ,int ,scalar_t__*) ;
 int SYS_RES_IRQ ;
 int device_printf (int ,char*,int ,int) ;
 int resource_list_add_next (int *,int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
siba_register_interrupts(device_t dev, device_t child,
     struct siba_devinfo *dinfo)
{
 int error;


 if (!dinfo->core_id.intr_en)
  return (0);


 dinfo->intr.mapped = 0;
 dinfo->intr.irq = 0;
 dinfo->intr.rid = -1;


 error = BHND_BUS_MAP_INTR(dev, child, 0 ,
     &dinfo->intr.irq);
 if (error) {
  device_printf(dev, "failed mapping interrupt line for core %u: "
      "%d\n", dinfo->core_id.core_info.core_idx, error);
  return (error);
 }
 dinfo->intr.mapped = 1;


 dinfo->intr.rid = resource_list_add_next(&dinfo->resources, SYS_RES_IRQ,
     dinfo->intr.irq, dinfo->intr.irq, 1);

 return (0);
}
