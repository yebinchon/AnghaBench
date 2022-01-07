
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int kb_flags; } ;
typedef TYPE_1__ keyboard_t ;
typedef int device_t ;
struct TYPE_9__ {int intr; } ;
typedef TYPE_2__ atkbd_softc_t ;


 int ATKBD_DRIVER_NAME ;
 int KB_INITIALIZED ;
 int device_get_flags (int ) ;
 int device_get_parent (int ) ;
 TYPE_2__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int kbd_find_keyboard (int ,int) ;
 TYPE_1__* kbd_get_keyboard (int ) ;
 int kbdd_clear_state (TYPE_1__*) ;
 int kbdd_init (TYPE_1__*,int,TYPE_1__**,int*,int ) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
atkbdresume(device_t dev)
{
 atkbd_softc_t *sc;
 keyboard_t *kbd;
 int args[2];

 sc = device_get_softc(dev);
 kbd = kbd_get_keyboard(kbd_find_keyboard(ATKBD_DRIVER_NAME,
       device_get_unit(dev)));
 if (kbd) {
  kbd->kb_flags &= ~KB_INITIALIZED;
  args[0] = device_get_unit(device_get_parent(dev));
  args[1] = rman_get_start(sc->intr);
  kbdd_init(kbd, device_get_unit(dev), &kbd, args,
      device_get_flags(dev));
  kbdd_clear_state(kbd);
 }
 return 0;
}
