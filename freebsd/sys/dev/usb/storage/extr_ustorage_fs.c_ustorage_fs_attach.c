
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ustorage_fs_softc {int sc_mtx; int * sc_xfer; void* sc_dma_ptr; void* sc_csw; void* sc_cbw; int sc_iface_no; TYPE_1__* sc_lun; int sc_udev; int sc_dev; } ;
struct usb_interface_descriptor {int bInterfaceNumber; } ;
struct TYPE_4__ {int bIfaceIndex; } ;
struct usb_attach_arg {TYPE_2__ info; int device; int iface; } ;
typedef int device_t ;
struct TYPE_3__ {int num_sectors; int removable; int * memory_image; } ;


 int ENOMEM ;
 int ENXIO ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int M_USB ;
 int M_WAITOK ;
 int M_ZERO ;
 int USB_POWER_MODE_SAVE ;
 int USTORAGE_FS_RAM_SECT ;
 size_t USTORAGE_FS_T_BBB_COMMAND ;
 size_t USTORAGE_FS_T_BBB_DATA_READ ;
 int USTORAGE_FS_T_BBB_MAX ;
 size_t USTORAGE_FS_T_BBB_STATUS ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ustorage_fs_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_usb_desc (int ) ;
 int * malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usbd_errstr (int) ;
 struct usb_interface_descriptor* usbd_get_interface_descriptor (int ) ;
 int usbd_set_power_mode (int ,int ) ;
 int usbd_transfer_setup (int ,int *,int *,int ,int ,struct ustorage_fs_softc*,int *) ;
 void* usbd_xfer_get_frame_buffer (int ,int ) ;
 int ustorage_fs_bbb_config ;
 int ustorage_fs_detach (int ) ;
 int * ustorage_fs_ramdisk ;
 int ustorage_fs_transfer_start (struct ustorage_fs_softc*,size_t) ;

__attribute__((used)) static int
ustorage_fs_attach(device_t dev)
{
 struct ustorage_fs_softc *sc = device_get_softc(dev);
 struct usb_attach_arg *uaa = device_get_ivars(dev);
 struct usb_interface_descriptor *id;
 int err;
 int unit;







 sc->sc_dev = dev;
 sc->sc_udev = uaa->device;
 unit = device_get_unit(dev);


 usbd_set_power_mode(uaa->device, USB_POWER_MODE_SAVE);

 if (unit == 0) {
  if (ustorage_fs_ramdisk == ((void*)0)) {




   ustorage_fs_ramdisk =
       malloc(USTORAGE_FS_RAM_SECT << 9, M_USB,
       M_ZERO | M_WAITOK);

   if (ustorage_fs_ramdisk == ((void*)0)) {
    return (ENOMEM);
   }
  }
  sc->sc_lun[0].memory_image = ustorage_fs_ramdisk;
  sc->sc_lun[0].num_sectors = USTORAGE_FS_RAM_SECT;
  sc->sc_lun[0].removable = 1;
 }

 device_set_usb_desc(dev);

 mtx_init(&sc->sc_mtx, "USTORAGE_FS lock",
     ((void*)0), (MTX_DEF | MTX_RECURSE));



 id = usbd_get_interface_descriptor(uaa->iface);
 if (id == ((void*)0)) {
  device_printf(dev, "failed to get "
      "interface number\n");
  goto detach;
 }
 sc->sc_iface_no = id->bInterfaceNumber;

 err = usbd_transfer_setup(uaa->device,
     &uaa->info.bIfaceIndex, sc->sc_xfer, ustorage_fs_bbb_config,
     USTORAGE_FS_T_BBB_MAX, sc, &sc->sc_mtx);
 if (err) {
  device_printf(dev, "could not setup required "
      "transfers, %s\n", usbd_errstr(err));
  goto detach;
 }

 sc->sc_cbw = usbd_xfer_get_frame_buffer(sc->sc_xfer[
     USTORAGE_FS_T_BBB_COMMAND], 0);
 sc->sc_csw = usbd_xfer_get_frame_buffer(sc->sc_xfer[
     USTORAGE_FS_T_BBB_STATUS], 0);
  sc->sc_dma_ptr = usbd_xfer_get_frame_buffer(sc->sc_xfer[
     USTORAGE_FS_T_BBB_DATA_READ], 0);



 mtx_lock(&sc->sc_mtx);
 ustorage_fs_transfer_start(sc, USTORAGE_FS_T_BBB_COMMAND);
 mtx_unlock(&sc->sc_mtx);

 return (0);

detach:
 ustorage_fs_detach(dev);
 return (ENXIO);
}
