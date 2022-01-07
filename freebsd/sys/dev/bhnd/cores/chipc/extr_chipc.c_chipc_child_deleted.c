
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_devinfo {int irq_mapped; int irq; int resources; } ;
typedef int device_t ;


 int M_BHND ;
 int bhnd_unmap_intr (int ,int ) ;
 struct chipc_devinfo* device_get_ivars (int ) ;
 int device_set_ivars (int ,int *) ;
 int free (struct chipc_devinfo*,int ) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
chipc_child_deleted(device_t dev, device_t child)
{
 struct chipc_devinfo *dinfo = device_get_ivars(child);

 if (dinfo != ((void*)0)) {

  resource_list_free(&dinfo->resources);


  if (dinfo->irq_mapped) {
   bhnd_unmap_intr(dev, dinfo->irq);
   dinfo->irq_mapped = 0;
  }

  free(dinfo, M_BHND);
 }

 device_set_ivars(child, ((void*)0));
}
