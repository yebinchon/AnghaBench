
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int keyboard; } ;
typedef TYPE_1__ sc_softc_t ;
typedef int ki ;
struct TYPE_11__ {int kb_unit; int kb_name; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_12__ {int kb_unit; int kb_name; } ;
typedef TYPE_3__ keyboard_info_t ;
typedef int caddr_t ;


 int KBADDKBD ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int bzero (TYPE_3__*,int) ;
 int kbd_allocate (char*,int,void*,int ,TYPE_1__*) ;
 int kbd_find_keyboard2 (char*,int,int) ;
 TYPE_2__* kbd_get_keyboard (int) ;
 int kbdd_ioctl (TYPE_2__*,int ,int ) ;
 int sckbdevent ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
sc_allocate_keyboard(sc_softc_t *sc, int unit)
{
 int idx0, idx;
 keyboard_t *k0, *k;
 keyboard_info_t ki;

 idx0 = kbd_allocate("kbdmux", -1, (void *)&sc->keyboard, sckbdevent, sc);
 if (idx0 != -1) {
  k0 = kbd_get_keyboard(idx0);

  for (idx = kbd_find_keyboard2("*", -1, 0);
       idx != -1;
       idx = kbd_find_keyboard2("*", -1, idx + 1)) {
   k = kbd_get_keyboard(idx);

   if (idx == idx0 || KBD_IS_BUSY(k))
    continue;

   bzero(&ki, sizeof(ki));
   strcpy(ki.kb_name, k->kb_name);
   ki.kb_unit = k->kb_unit;

   (void)kbdd_ioctl(k0, KBADDKBD, (caddr_t) &ki);
  }
 } else
  idx0 = kbd_allocate("*", unit, (void *)&sc->keyboard, sckbdevent, sc);

 return (idx0);
}
