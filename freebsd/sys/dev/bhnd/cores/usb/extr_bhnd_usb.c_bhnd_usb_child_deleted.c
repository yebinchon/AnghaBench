
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_usb_devinfo {int sdi_rl; int sdi_irq; scalar_t__ sdi_irq_mapped; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int bhnd_unmap_intr (int ,int ) ;
 struct bhnd_usb_devinfo* device_get_ivars (int ) ;
 int free (struct bhnd_usb_devinfo*,int ) ;
 int resource_list_free (int *) ;

__attribute__((used)) static void
bhnd_usb_child_deleted(device_t dev, device_t child)
{
 struct bhnd_usb_devinfo *dinfo;

 if ((dinfo = device_get_ivars(child)) == ((void*)0))
  return;

 if (dinfo->sdi_irq_mapped)
  bhnd_unmap_intr(dev, dinfo->sdi_irq);

 resource_list_free(&dinfo->sdi_rl);
 free(dinfo, M_DEVBUF);
}
