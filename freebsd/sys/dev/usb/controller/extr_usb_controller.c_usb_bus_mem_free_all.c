
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* usb_bus_mem_cb_t ) (struct usb_bus*,int *) ;
struct usb_bus {int bus_spin_lock; int bus_mtx; int dma_parent_tag; } ;


 int mtx_destroy (int *) ;
 int usb_bus_mem_free_all_cb ;
 int usb_dma_tag_unsetup (int ) ;

void
usb_bus_mem_free_all(struct usb_bus *bus, usb_bus_mem_cb_t *cb)
{







 mtx_destroy(&bus->bus_mtx);
 mtx_destroy(&bus->bus_spin_lock);
}
