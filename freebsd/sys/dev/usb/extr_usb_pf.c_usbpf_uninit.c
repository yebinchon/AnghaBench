
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * ifp; } ;
typedef int device_t ;
typedef int * devclass_t ;


 int M_TEMP ;
 int * devclass_find (int ) ;
 int devclass_get_devices (int *,int **,int*) ;
 struct usb_bus* device_get_softc (int ) ;
 int free (int *,int ) ;
 int if_clone_detach (int ) ;
 int usbpf_clone_destroy (int ,int *) ;
 int usbpf_cloner ;
 int usbusname ;

__attribute__((used)) static void
usbpf_uninit(void *arg)
{
 int devlcnt;
 device_t *devlp;
 devclass_t dc;
 struct usb_bus *ubus;
 int error;
 int i;

 if_clone_detach(usbpf_cloner);

 dc = devclass_find(usbusname);
 if (dc == ((void*)0))
  return;
 error = devclass_get_devices(dc, &devlp, &devlcnt);
 if (error)
  return;
 for (i = 0; i < devlcnt; i++) {
  ubus = device_get_softc(devlp[i]);
  if (ubus != ((void*)0) && ubus->ifp != ((void*)0))
   usbpf_clone_destroy(usbpf_cloner, ubus->ifp);
 }
 free(devlp, M_TEMP);
}
