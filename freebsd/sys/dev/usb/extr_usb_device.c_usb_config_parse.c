
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_interface_descriptor {int bNumEndpoints; } ;
struct usb_interface {scalar_t__ iface_index; scalar_t__ refcount_alloc; scalar_t__ iface_index_alt; scalar_t__ parent_iface_index; scalar_t__ alt_index; struct usb_interface_descriptor* idesc; } ;
struct usb_idesc_parse_state {scalar_t__ iface_index; scalar_t__ refcount_alloc; scalar_t__ iface_index_alt; scalar_t__ parent_iface_index; scalar_t__ alt_index; struct usb_interface_descriptor* idesc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_endpoint {scalar_t__ iface_index; scalar_t__ refcount_alloc; scalar_t__ iface_index_alt; scalar_t__ parent_iface_index; scalar_t__ alt_index; struct usb_interface_descriptor* idesc; } ;
struct usb_device {scalar_t__ endpoints_max; scalar_t__ ifaces_max; struct usb_interface* endpoints; struct usb_interface* ifaces; int bus; int * ep_curr; int cdesc; int enum_sx; } ;
typedef int ips ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,...) ;
 int M_USB ;
 int M_WAITOK ;
 int M_ZERO ;
 int SA_LOCKED ;
 int USB_BUS_LOCK (int ) ;
 int USB_BUS_UNLOCK (int ) ;
 scalar_t__ USB_CFG_ALLOC ;
 scalar_t__ USB_CFG_FREE ;
 scalar_t__ USB_CFG_INIT ;
 scalar_t__ USB_ERR_IN_USE ;
 scalar_t__ USB_ERR_NOMEM ;
 scalar_t__ USB_IFACE_INDEX_ANY ;
 scalar_t__ USB_MAX_EP_UNITS ;
 int free (struct usb_interface*,int ) ;
 void* malloc (int,int ,int) ;
 int memset (struct usb_interface*,int ,int) ;
 int sx_assert (int *,int ) ;
 void* usb_ed_comp_foreach (int ,void*) ;
 struct usb_endpoint_descriptor* usb_edesc_foreach (int ,struct usb_endpoint_descriptor*) ;
 struct usb_interface_descriptor* usb_idesc_foreach (int ,struct usb_interface*) ;
 int usb_init_endpoint (struct usb_device*,scalar_t__,struct usb_endpoint_descriptor*,void*,struct usb_interface*) ;

__attribute__((used)) static usb_error_t
usb_config_parse(struct usb_device *udev, uint8_t iface_index, uint8_t cmd)
{
 struct usb_idesc_parse_state ips;
 struct usb_interface_descriptor *id;
 struct usb_endpoint_descriptor *ed;
 struct usb_interface *iface;
 struct usb_endpoint *ep;
 usb_error_t err;
 uint8_t ep_curr;
 uint8_t ep_max;
 uint8_t temp;
 uint8_t do_init;
 uint8_t alt_index;

 if (iface_index != USB_IFACE_INDEX_ANY) {

  alt_index = cmd;
  cmd = USB_CFG_INIT;
 } else {

  alt_index = 0;
 }

 err = 0;

 DPRINTFN(5, "iface_index=%d cmd=%d\n",
     iface_index, cmd);

 if (cmd == USB_CFG_FREE)
  goto cleanup;

 if (cmd == USB_CFG_INIT) {
  sx_assert(&udev->enum_sx, SA_LOCKED);



  ep = udev->endpoints;
  ep_max = udev->endpoints_max;
  while (ep_max--) {

   if ((iface_index == USB_IFACE_INDEX_ANY) ||
       (iface_index == ep->iface_index)) {
    if (ep->refcount_alloc != 0) {




     err = USB_ERR_IN_USE;
    } else {

     memset(ep, 0, sizeof(*ep));

     ep->iface_index = USB_IFACE_INDEX_ANY;
    }
   }
   ep++;
  }

  if (err)
   return (err);
 }

 memset(&ips, 0, sizeof(ips));

 ep_curr = 0;
 ep_max = 0;

 while ((id = usb_idesc_foreach(udev->cdesc, &ips))) {

  iface = udev->ifaces + ips.iface_index;



  if (cmd == USB_CFG_INIT) {
   if ((iface_index != USB_IFACE_INDEX_ANY) &&
       (iface_index != ips.iface_index)) {

    do_init = 0;
   } else if (alt_index != ips.iface_index_alt) {

    do_init = 0;
   } else {

    do_init = 1;
   }
  } else
   do_init = 0;


  if (ips.iface_index_alt == 0) {

   ep_curr = ep_max;
  }

  if (do_init) {

   iface->idesc = id;

   iface->alt_index = alt_index;

   if (iface_index == USB_IFACE_INDEX_ANY) {
    iface->parent_iface_index =
        USB_IFACE_INDEX_ANY;
   }
  }

  DPRINTFN(5, "found idesc nendpt=%d\n", id->bNumEndpoints);

  ed = (struct usb_endpoint_descriptor *)id;

  temp = ep_curr;


  while ((ed = usb_edesc_foreach(udev->cdesc, ed))) {


   if (temp >= USB_MAX_EP_UNITS) {
    DPRINTF("Endpoint limit reached\n");
    break;
   }

   ep = udev->endpoints + temp;

   if (do_init) {
    void *ecomp;

    ecomp = usb_ed_comp_foreach(udev->cdesc, (void *)ed);
    if (ecomp != ((void*)0))
     DPRINTFN(5, "Found endpoint companion descriptor\n");

    usb_init_endpoint(udev,
        ips.iface_index, ed, ecomp, ep);
   }

   temp ++;


   if (ep_max < temp)
    ep_max = temp;
  }
 }



 if (cmd == USB_CFG_ALLOC) {
  udev->ifaces_max = ips.iface_index;

  udev->ifaces = ((void*)0);
  if (udev->ifaces_max != 0) {
   udev->ifaces = malloc(sizeof(*iface) * udev->ifaces_max,
           M_USB, M_WAITOK | M_ZERO);
   if (udev->ifaces == ((void*)0)) {
    err = USB_ERR_NOMEM;
    goto done;
   }
  }


  if (ep_max != 0) {
   udev->endpoints = malloc(sizeof(*ep) * ep_max,
           M_USB, M_WAITOK | M_ZERO);
   if (udev->endpoints == ((void*)0)) {
    err = USB_ERR_NOMEM;
    goto done;
   }
  } else {
   udev->endpoints = ((void*)0);
  }

  USB_BUS_LOCK(udev->bus);
  udev->endpoints_max = ep_max;

  udev->ep_curr = ((void*)0);
  USB_BUS_UNLOCK(udev->bus);
 }

done:

 if (err) {
  if (cmd == USB_CFG_ALLOC) {
cleanup:
   USB_BUS_LOCK(udev->bus);
   udev->endpoints_max = 0;

   udev->ep_curr = ((void*)0);
   USB_BUS_UNLOCK(udev->bus);


   free(udev->ifaces, M_USB);
   udev->ifaces = ((void*)0);


   free(udev->endpoints, M_USB);
   udev->endpoints = ((void*)0);

   udev->ifaces_max = 0;
  }
 }
 return (err);
}
