
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct ucom_softc {int sc_flag; int sc_mtx; TYPE_1__* sc_callback; } ;
struct ucom_param_task {int termios_copy; struct ucom_softc* sc; } ;
struct TYPE_2__ {int (* ucom_cfg_param ) (struct ucom_softc*,int *) ;} ;


 int UCOM_FLAG_LL_READY ;
 int hz ;
 int stub1 (struct ucom_softc*,int *) ;
 int usb_pause_mtx (int ,int) ;

__attribute__((used)) static void
ucom_cfg_param(struct usb_proc_msg *_task)
{
 struct ucom_param_task *task =
     (struct ucom_param_task *)_task;
 struct ucom_softc *sc = task->sc;

 if (!(sc->sc_flag & UCOM_FLAG_LL_READY)) {
  return;
 }
 if (sc->sc_callback->ucom_cfg_param == ((void*)0)) {
  return;
 }

 (sc->sc_callback->ucom_cfg_param) (sc, &task->termios_copy);


 usb_pause_mtx(sc->sc_mtx, hz / 10);
}
