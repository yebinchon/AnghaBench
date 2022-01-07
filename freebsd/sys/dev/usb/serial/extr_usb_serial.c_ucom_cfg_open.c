
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct ucom_softc {int sc_flag; int sc_mtx; TYPE_1__* sc_callback; } ;
struct ucom_cfg_task {struct ucom_softc* sc; } ;
struct TYPE_2__ {int (* ucom_cfg_open ) (struct ucom_softc*) ;} ;


 int DPRINTF (char*) ;
 int UCOM_FLAG_LL_READY ;
 int hz ;
 int stub1 (struct ucom_softc*) ;
 int usb_pause_mtx (int ,int) ;

__attribute__((used)) static void
ucom_cfg_open(struct usb_proc_msg *_task)
{
 struct ucom_cfg_task *task =
     (struct ucom_cfg_task *)_task;
 struct ucom_softc *sc = task->sc;

 DPRINTF("\n");

 if (sc->sc_flag & UCOM_FLAG_LL_READY) {



 } else {

  sc->sc_flag |= UCOM_FLAG_LL_READY;

  if (sc->sc_callback->ucom_cfg_open) {
   (sc->sc_callback->ucom_cfg_open) (sc);


   usb_pause_mtx(sc->sc_mtx, hz / 10);
  }
 }
}
