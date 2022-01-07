
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xen_intr_handle_t ;
struct notify_data {int action; int * notify_evtchn_handle; int index; int event_channel_port; } ;
struct ioctl_gntdev_unmap_notify {int action; int index; int event_channel_port; } ;


 int EINVAL ;
 int UNMAP_NOTIFY_SEND_EVENT ;
 scalar_t__ xen_intr_get_evtchn_from_port (int ,int **) ;
 int xen_intr_unbind (int **) ;

__attribute__((used)) static int
copy_notify_helper(struct notify_data *destination,
    struct ioctl_gntdev_unmap_notify *source)
{
 xen_intr_handle_t handlep = ((void*)0);





 if (source->action & UNMAP_NOTIFY_SEND_EVENT)
  if (xen_intr_get_evtchn_from_port(source->event_channel_port,
      &handlep) != 0)
   return (EINVAL);

 if (destination->action & UNMAP_NOTIFY_SEND_EVENT)
  xen_intr_unbind(&destination->notify_evtchn_handle);

 destination->action = source->action;
 destination->event_channel_port = source->event_channel_port;
 destination->index = source->index;
 destination->notify_evtchn_handle = handlep;

 return (0);
}
