
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_proc_callback_t ;
struct usb_proc_msg {int dummy; } ;
struct ucom_super_softc {int sc_tq; } ;
struct ucom_softc {TYPE_1__* sc_last_start_xfer; struct ucom_super_softc* sc_super; } ;
struct TYPE_2__ {int * pm_callback; } ;
struct termios {int dummy; } ;
struct ucom_param_task {TYPE_1__ hdr; struct termios termios_copy; struct ucom_softc* sc; } ;


 int DPRINTF (char*) ;
 int MA_OWNED ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 int * ucom_cfg_close ;
 int * ucom_cfg_start_transfers ;
 scalar_t__ usb_proc_is_gone (int *) ;
 scalar_t__ usb_proc_msignal (int *,struct usb_proc_msg*,struct usb_proc_msg*) ;
 int usb_proc_mwait (int *,struct usb_proc_msg*,struct usb_proc_msg*) ;

__attribute__((used)) static void
ucom_queue_command(struct ucom_softc *sc,
    usb_proc_callback_t *fn, struct termios *pt,
    struct usb_proc_msg *t0, struct usb_proc_msg *t1)
{
 struct ucom_super_softc *ssc = sc->sc_super;
 struct ucom_param_task *task;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (usb_proc_is_gone(&ssc->sc_tq)) {
  DPRINTF("proc is gone\n");
  return;
 }





 task = (struct ucom_param_task *)
   usb_proc_msignal(&ssc->sc_tq, t0, t1);


 task->hdr.pm_callback = fn;
 task->sc = sc;





 if (pt != ((void*)0))
  task->termios_copy = *pt;




 if (fn == ucom_cfg_close)
  usb_proc_mwait(&ssc->sc_tq, t0, t1);





 if (fn == ucom_cfg_start_transfers)
  sc->sc_last_start_xfer = &task->hdr;
}
