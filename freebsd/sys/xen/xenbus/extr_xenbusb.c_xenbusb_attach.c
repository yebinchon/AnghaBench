
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {char* node; uintptr_t callback_data; int callback; } ;
struct TYPE_4__ {void* ich_arg; int ich_func; } ;
struct xenbusb_softc {char* xbs_node; int xbs_connecting_children; TYPE_1__ xbs_device_watch; int xbs_probe_children; int xbs_flags; TYPE_2__ xbs_attach_ch; void* xbs_dev; int xbs_id_components; int xbs_lock; } ;
typedef void* device_t ;


 int MTX_DEF ;
 int TASK_INIT (int *,int ,int ,void*) ;
 int XBS_ATTACH_CH_ACTIVE ;
 int config_intrhook_establish (TYPE_2__*) ;
 struct xenbusb_softc* device_get_softc (void*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int xenbusb_devices_changed ;
 int xenbusb_enumerate_bus (struct xenbusb_softc*) ;
 int xenbusb_nop_confighook_cb ;
 int xenbusb_probe_children (void*) ;
 int xenbusb_probe_children_cb ;
 int xenbusb_release_confighook (struct xenbusb_softc*) ;
 int xs_register_watch (TYPE_1__*) ;

int
xenbusb_attach(device_t dev, char *bus_node, u_int id_components)
{
 struct xenbusb_softc *xbs;

 xbs = device_get_softc(dev);
 mtx_init(&xbs->xbs_lock, "xenbusb softc lock", ((void*)0), MTX_DEF);
 xbs->xbs_node = bus_node;
 xbs->xbs_id_components = id_components;
 xbs->xbs_dev = dev;
 xbs->xbs_attach_ch.ich_func = xenbusb_nop_confighook_cb;
 xbs->xbs_attach_ch.ich_arg = dev;
 config_intrhook_establish(&xbs->xbs_attach_ch);
 xbs->xbs_flags |= XBS_ATTACH_CH_ACTIVE;
 xbs->xbs_connecting_children = 1;
 (void)xenbusb_enumerate_bus(xbs);
 xenbusb_probe_children(dev);

 xbs->xbs_device_watch.node = bus_node;
 xbs->xbs_device_watch.callback = xenbusb_devices_changed;
 xbs->xbs_device_watch.callback_data = (uintptr_t)xbs;

 TASK_INIT(&xbs->xbs_probe_children, 0, xenbusb_probe_children_cb, dev);

 xs_register_watch(&xbs->xbs_device_watch);

 xenbusb_release_confighook(xbs);

 return (0);
}
