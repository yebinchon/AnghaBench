
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {TYPE_1__* ue_sync_task; int * ue_dev; int * ue_mtx; int ue_tq; int * ue_methods; int * ue_udev; } ;
struct TYPE_2__ {int hdr; } ;


 int EINVAL ;
 int UE_LOCK (struct usb_ether*) ;
 int UE_UNLOCK (struct usb_ether*) ;
 int USB_PRI_MED ;
 int device_get_nameunit (int *) ;
 int device_printf (int *,char*) ;
 int ue_attach_post_task ;
 int ue_queue_command (struct usb_ether*,int ,int *,int *) ;
 int usb_proc_create (int *,int *,int ,int ) ;

int
uether_ifattach(struct usb_ether *ue)
{
 int error;


 if ((ue->ue_dev == ((void*)0)) ||
     (ue->ue_udev == ((void*)0)) ||
     (ue->ue_mtx == ((void*)0)) ||
     (ue->ue_methods == ((void*)0)))
  return (EINVAL);

 error = usb_proc_create(&ue->ue_tq, ue->ue_mtx,
     device_get_nameunit(ue->ue_dev), USB_PRI_MED);
 if (error) {
  device_printf(ue->ue_dev, "could not setup taskqueue\n");
  goto error;
 }


 UE_LOCK(ue);
 ue_queue_command(ue, ue_attach_post_task,
     &ue->ue_sync_task[0].hdr,
     &ue->ue_sync_task[1].hdr);
 UE_UNLOCK(ue);

error:
 return (error);
}
