
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int buttons; int z; int x; int y; } ;
struct umouse_softc {int newdata; int ev_mtx; TYPE_2__* hci; int mtx; TYPE_1__ um_report; } ;
struct bhyvegc_image {int width; int height; } ;
struct TYPE_4__ {int (* hci_intr ) (TYPE_2__*,int) ;} ;


 int MOUSE_MAX_X ;
 int MOUSE_MAX_Y ;
 int UE_DIR_IN ;
 int UMOUSE_INTR_ENDPT ;
 struct bhyvegc_image* console_get_image () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void
umouse_event(uint8_t button, int x, int y, void *arg)
{
 struct umouse_softc *sc;
 struct bhyvegc_image *gc;

 gc = console_get_image();
 if (gc == ((void*)0)) {

  return;
 }

 sc = arg;

 pthread_mutex_lock(&sc->mtx);

 sc->um_report.buttons = 0;
 sc->um_report.z = 0;

 if (button & 0x01)
  sc->um_report.buttons |= 0x01;
 if (button & 0x02)
  sc->um_report.buttons |= 0x04;
 if (button & 0x04)
  sc->um_report.buttons |= 0x02;
 if (button & 0x8)
  sc->um_report.z = 1;
 if (button & 0x10)
  sc->um_report.z = -1;


 sc->um_report.x = MOUSE_MAX_X * x / gc->width;
 sc->um_report.y = MOUSE_MAX_Y * y / gc->height;
 sc->newdata = 1;
 pthread_mutex_unlock(&sc->mtx);

 pthread_mutex_lock(&sc->ev_mtx);
 sc->hci->hci_intr(sc->hci, UE_DIR_IN | UMOUSE_INTR_ENDPT);
 pthread_mutex_unlock(&sc->ev_mtx);
}
