
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int kb_flags; } ;
typedef TYPE_1__ keyboard_t ;


 int ATKBD_DEFAULT ;
 int ATKBD_DRIVER_NAME ;
 int KB_REGISTERED ;
 scalar_t__ atkbd_init (int ,TYPE_1__**,int*,int) ;
 scalar_t__ atkbd_probe (int ,int*,int) ;
 scalar_t__ atkbdc_configure () ;
 int kbd_find_keyboard (int ,int ) ;
 TYPE_1__* kbd_get_keyboard (int) ;
 int kbd_unregister (TYPE_1__*) ;
 scalar_t__ resource_disabled (char*,int ) ;
 scalar_t__ resource_int_value (char*,int ,char*,int*) ;

__attribute__((used)) static int
atkbd_configure(int flags)
{
 keyboard_t *kbd;
 int arg[2];
 int i;





 if (atkbdc_configure() != 0 ||
     resource_disabled("atkbd", ATKBD_DEFAULT)) {
  i = kbd_find_keyboard(ATKBD_DRIVER_NAME, ATKBD_DEFAULT);
  if (i >= 0) {
   kbd = kbd_get_keyboard(i);
   kbd_unregister(kbd);
   kbd->kb_flags &= ~KB_REGISTERED;
  }
  return 0;
 }


 if (resource_int_value("atkbd", ATKBD_DEFAULT, "flags", &i) == 0)
  flags |= i;


 arg[0] = -1;
 arg[1] = -1;
 kbd = ((void*)0);
 if (atkbd_probe(ATKBD_DEFAULT, arg, flags))
  return 0;
 if (atkbd_init(ATKBD_DEFAULT, &kbd, arg, flags))
  return 0;


 return 1;
}
