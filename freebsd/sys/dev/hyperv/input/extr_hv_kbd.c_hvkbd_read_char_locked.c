
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int info; int makecode; } ;
typedef TYPE_1__ keystroke ;
struct TYPE_14__ {int kb_count; TYPE_3__* kb_data; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_15__ {scalar_t__ sc_mode; int dev; } ;
typedef TYPE_3__ hv_kbd_sc ;


 int DEBUG_HVKBD (TYPE_2__*,char*,int ) ;
 int HVKBD_LOCK_ASSERT () ;
 int IS_BREAK ;
 int IS_E0 ;
 int IS_E1 ;
 int IS_UNICODE ;
 int KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ K_RAW ;
 int NOKEY ;
 int XTKBD_EMUL0 ;
 int XTKBD_EMUL1 ;
 int XTKBD_RELEASE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 scalar_t__ hv_kbd_fetch_top (TYPE_3__*,TYPE_1__*) ;
 int hv_kbd_modify_top (TYPE_3__*,TYPE_1__*) ;
 int hv_kbd_prod_is_ready (TYPE_3__*) ;
 int hv_kbd_remove_top (TYPE_3__*) ;

__attribute__((used)) static uint32_t
hvkbd_read_char_locked(keyboard_t *kbd, int wait)
{
 uint32_t scancode = NOKEY;
 keystroke ks;
 hv_kbd_sc *sc = kbd->kb_data;
 HVKBD_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd) || !hv_kbd_prod_is_ready(sc))
  return (NOKEY);
 if (sc->sc_mode == K_RAW) {
  if (hv_kbd_fetch_top(sc, &ks)) {
   return (NOKEY);
  }
  if ((ks.info & IS_E0) || (ks.info & IS_E1)) {




   if (ks.info & IS_E0) {
    scancode = XTKBD_EMUL0;
    ks.info &= ~IS_E0;
   } else if (ks.info & IS_E1) {
    scancode = XTKBD_EMUL1;
    ks.info &= ~IS_E1;
   }




   hv_kbd_modify_top(sc, &ks);
  } else if (ks.info & IS_UNICODE) {







   if (bootverbose)
    device_printf(sc->dev, "Unsupported unicode\n");
   hv_kbd_remove_top(sc);
   return (NOKEY);
  } else {
   scancode = ks.makecode;
   if (ks.info & IS_BREAK) {
    scancode |= XTKBD_RELEASE;
   }
   hv_kbd_remove_top(sc);
  }
 } else {
  if (bootverbose)
   device_printf(sc->dev, "Unsupported mode: %d\n", sc->sc_mode);
 }
 ++kbd->kb_count;
 DEBUG_HVKBD(kbd, "read scan: 0x%x\n", scancode);
 return scancode;
}
