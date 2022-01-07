
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_process {int * up_ptr; int up_drain; int up_cv; int up_qhead; int up_prio; struct mtx* up_mtx; } ;
struct mtx {int dummy; } ;


 int DPRINTFN (int ,char*) ;
 int ENOMEM ;
 int TAILQ_INIT (int *) ;
 scalar_t__ USB_THREAD_CREATE (int *,struct usb_process*,int **,char*,char const*) ;
 int cv_init (int *,char*) ;
 int usb_pcount ;
 int usb_proc_free (struct usb_process*) ;
 int usb_process ;

int
usb_proc_create(struct usb_process *up, struct mtx *p_mtx,
    const char *pmesg, uint8_t prio)
{
 up->up_mtx = p_mtx;
 up->up_prio = prio;

 TAILQ_INIT(&up->up_qhead);

 cv_init(&up->up_cv, "-");
 cv_init(&up->up_drain, "usbdrain");

 if (USB_THREAD_CREATE(&usb_process, up,
     &up->up_ptr, "%s", pmesg)) {
  DPRINTFN(0, "Unable to create USB process.");
  up->up_ptr = ((void*)0);
  goto error;
 }



 return (0);

error:
 usb_proc_free(up);
 return (ENOMEM);
}
