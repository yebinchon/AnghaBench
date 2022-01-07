
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_14__ {int kb_delay1; int kb_delay2; TYPE_1__ kb_callback; int kb_config; int kb_type; scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;
typedef int caddr_t ;
struct TYPE_15__ {scalar_t__ ks_polling; int ks_state; int kbdc; } ;
typedef TYPE_3__ atkbd_state_t ;


 int FALSE ;
 int KBDIO_KEYINPUT ;
 int KBD_FOUND_DEVICE (TYPE_2__*) ;
 int KBD_HAS_DEVICE (TYPE_2__*) ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int KDSETLED ;
 int KDSETREPEAT ;
 int NOKEY ;
 int atkbd_ioctl (TYPE_2__*,int ,int ) ;
 int atkbd_read_char (TYPE_2__*,int ) ;
 int init_keyboard (int ,int *,int ) ;
 int set_typematic (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int
atkbd_intr(keyboard_t *kbd, void *arg)
{
 atkbd_state_t *state = (atkbd_state_t *)kbd->kb_data;
 int delay[2];
 int c;

 if (!KBD_HAS_DEVICE(kbd)) {




  init_keyboard(state->kbdc, &kbd->kb_type, kbd->kb_config);
  KBD_FOUND_DEVICE(kbd);
  atkbd_ioctl(kbd, KDSETLED, (caddr_t)&state->ks_state);
  set_typematic(kbd);
  delay[0] = kbd->kb_delay1;
  delay[1] = kbd->kb_delay2;
  atkbd_ioctl(kbd, KDSETREPEAT, (caddr_t)delay);
 }

 if (state->ks_polling)
  return 0;

 if (KBD_IS_ACTIVE(kbd) && KBD_IS_BUSY(kbd)) {

  (*kbd->kb_callback.kc_func)(kbd, KBDIO_KEYINPUT,
         kbd->kb_callback.kc_arg);
 } else {

  do {
   c = atkbd_read_char(kbd, FALSE);
  } while (c != NOKEY);
 }
 return 0;
}
