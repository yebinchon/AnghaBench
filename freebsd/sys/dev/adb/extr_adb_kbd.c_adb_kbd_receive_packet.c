
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef scalar_t__ u_char ;
struct TYPE_5__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ kb_callback; int kb_delay1; } ;
struct adb_kbd_softc {int buffers; int* buffer; int last_press; TYPE_2__ sc_kbd; int sc_cv; int sc_mutex; int sc_repeater; } ;
typedef int device_t ;


 scalar_t__ ADB_COMMAND_TALK ;
 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int akbd_repeat ;
 int callout_reset (int *,int ,int ,struct adb_kbd_softc*) ;
 int callout_stop (int *) ;
 int cv_broadcast (int *) ;
 int devctl_notify (char*,char*,char*,int *) ;
 struct adb_kbd_softc* device_get_softc (int ) ;
 int ms_to_ticks (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static u_int
adb_kbd_receive_packet(device_t dev, u_char status,
    u_char command, u_char reg, int len, u_char *data)
{
 struct adb_kbd_softc *sc;

 sc = device_get_softc(dev);

 if (command != ADB_COMMAND_TALK)
  return 0;

 if (reg != 0 || len != 2)
  return (0);

 mtx_lock(&sc->sc_mutex);

  if (data[0] == 0x7f) {
   devctl_notify("PMU", "Button", "pressed", ((void*)0));
   mtx_unlock(&sc->sc_mutex);
   return (0);
  } else if (data[0] == 0xff) {
   mtx_unlock(&sc->sc_mutex);
   return (0);
  }
  if ((data[0] & 0x7f) == 57 && sc->buffers < 7) {

   sc->buffer[sc->buffers++] = data[0] & 0x7f;
   sc->buffer[sc->buffers++] = (data[0] & 0x7f) | (1 << 7);
  } else {
   sc->buffer[sc->buffers++] = data[0];
  }
  if (sc->buffer[sc->buffers-1] < 0xff)
   sc->last_press = sc->buffer[sc->buffers-1];

  if ((data[1] & 0x7f) == 57 && sc->buffers < 7) {

   sc->buffer[sc->buffers++] = data[1] & 0x7f;
   sc->buffer[sc->buffers++] = (data[1] & 0x7f) | (1 << 7);
  } else {
   sc->buffer[sc->buffers++] = data[1];
  }

  if (sc->buffer[sc->buffers-1] < 0xff)
   sc->last_press = sc->buffer[sc->buffers-1];


  callout_stop(&sc->sc_repeater);


  if (!(sc->last_press & (1 << 7))) {
   callout_reset(&sc->sc_repeater,
       ms_to_ticks(sc->sc_kbd.kb_delay1), akbd_repeat, sc);
  }
 mtx_unlock(&sc->sc_mutex);

 cv_broadcast(&sc->sc_cv);

 if (KBD_IS_ACTIVE(&sc->sc_kbd) && KBD_IS_BUSY(&sc->sc_kbd)) {
  sc->sc_kbd.kb_callback.kc_func(&sc->sc_kbd,
    KBDIO_KEYINPUT, sc->sc_kbd.kb_callback.kc_arg);
 }

 return (0);
}
