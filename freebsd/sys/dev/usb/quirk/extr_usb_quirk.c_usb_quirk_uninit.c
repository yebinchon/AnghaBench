
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_destroy (int *) ;
 int usb_quirk_mtx ;
 int usb_quirk_unload (void*) ;

__attribute__((used)) static void
usb_quirk_uninit(void *arg)
{
 usb_quirk_unload(arg);


 mtx_destroy(&usb_quirk_mtx);
}
