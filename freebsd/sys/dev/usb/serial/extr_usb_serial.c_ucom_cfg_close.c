
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct ucom_softc {int sc_flag; TYPE_1__* sc_callback; } ;
struct ucom_cfg_task {struct ucom_softc* sc; } ;
struct TYPE_2__ {int (* ucom_cfg_close ) (struct ucom_softc*) ;} ;


 int DPRINTF (char*) ;
 int UCOM_FLAG_LL_READY ;
 int stub1 (struct ucom_softc*) ;

__attribute__((used)) static void
ucom_cfg_close(struct usb_proc_msg *_task)
{
 struct ucom_cfg_task *task =
     (struct ucom_cfg_task *)_task;
 struct ucom_softc *sc = task->sc;

 DPRINTF("\n");

 if (sc->sc_flag & UCOM_FLAG_LL_READY) {
  sc->sc_flag &= ~UCOM_FLAG_LL_READY;
  if (sc->sc_callback->ucom_cfg_close)
   (sc->sc_callback->ucom_cfg_close) (sc);
 } else {

 }
}
