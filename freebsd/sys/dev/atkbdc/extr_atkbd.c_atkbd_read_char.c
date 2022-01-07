
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct TYPE_5__ {scalar_t__ kb_type; int kb_count; scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_6__ {int ks_flags; scalar_t__ ks_composed_char; scalar_t__ ks_mode; int ks_prefix; int ks_accents; int ks_state; int * ks_evdev; int ks_evdev_state; int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int ALTS ;
 int COMPOSE ;
 int CTLS ;
 scalar_t__ ERRKEY ;
 int EVDEV_RCPT_HW_KBD ;
 int EV_KEY ;
 scalar_t__ KB_101 ;
 scalar_t__ KB_84 ;
 int KEY_RESERVED ;
 scalar_t__ K_CODE ;
 scalar_t__ K_RAW ;
 scalar_t__ NOKEY ;
 int SHIFTS ;
 scalar_t__ UCHAR_MAX ;
 int evdev_push_event (int *,int ,int ,int) ;
 int evdev_rcpt_mask ;
 int evdev_scancode2key (int *,int) ;
 int evdev_sync (int *) ;
 scalar_t__ genkbd_keyaction (TYPE_1__*,int,int,int *,int *) ;
 int printf (char*,int) ;
 int read_kbd_data (int ) ;
 int read_kbd_data_no_wait (int ) ;

__attribute__((used)) static u_int
atkbd_read_char(keyboard_t *kbd, int wait)
{
 atkbd_state_t *state;
 u_int action;
 int scancode;
 int keycode;

 state = (atkbd_state_t *)kbd->kb_data;
next_code:

 if (!(state->ks_flags & COMPOSE) && (state->ks_composed_char > 0)) {
  action = state->ks_composed_char;
  state->ks_composed_char = 0;
  if (action > UCHAR_MAX)
   return ERRKEY;
  return action;
 }


 if (wait) {
  do {
   scancode = read_kbd_data(state->kbdc);
  } while (scancode == -1);
 } else {
  scancode = read_kbd_data_no_wait(state->kbdc);
  if (scancode == -1)
   return NOKEY;
 }
 ++kbd->kb_count;
 if (state->ks_mode == K_RAW)
  return scancode;


 keycode = scancode & 0x7F;
 switch (state->ks_prefix) {
 case 0x00:
  switch(scancode) {
  case 0xB8:
   if (state->ks_flags & COMPOSE) {
    state->ks_flags &= ~COMPOSE;
    if (state->ks_composed_char > UCHAR_MAX)
     state->ks_composed_char = 0;
   }
   break;
  case 0x38:
   if (!(state->ks_flags & COMPOSE)) {
    state->ks_flags |= COMPOSE;
    state->ks_composed_char = 0;
   }
   break;
  case 0xE0:
  case 0xE1:
   state->ks_prefix = scancode;
   goto next_code;
  }
  break;
 case 0xE0:
  state->ks_prefix = 0;
  switch (keycode) {
  case 0x1C:
   keycode = 0x59;
   break;
  case 0x1D:
   keycode = 0x5A;
   break;
  case 0x35:
   keycode = 0x5B;
   break;
  case 0x37:
   keycode = 0x5C;
   break;
  case 0x38:
   keycode = 0x5D;
   break;
  case 0x46:
   keycode = 0x68;
   break;
  case 0x47:
   keycode = 0x5E;
   break;
  case 0x48:
   keycode = 0x5F;
   break;
  case 0x49:
   keycode = 0x60;
   break;
  case 0x4B:
   keycode = 0x61;
   break;
  case 0x4D:
   keycode = 0x62;
   break;
  case 0x4F:
   keycode = 0x63;
   break;
  case 0x50:
   keycode = 0x64;
   break;
  case 0x51:
   keycode = 0x65;
   break;
  case 0x52:
   keycode = 0x66;
   break;
  case 0x53:
   keycode = 0x67;
   break;

  case 0x5b:
   keycode = 0x69;
   break;
  case 0x5c:
   keycode = 0x6a;
   break;
  case 0x5d:
   keycode = 0x6b;
   break;
  case 0x5e:
   keycode = 0x6d;
   break;
  case 0x5f:
   keycode = 0x6e;
   break;
  case 0x63:
   keycode = 0x6f;
   break;
  default:
   goto next_code;
  }
  break;
    case 0xE1:






  state->ks_prefix = 0;
  if (keycode == 0x1D)
   state->ks_prefix = 0x1D;
  goto next_code;

    case 0x1D:
  state->ks_prefix = 0;
  if (keycode != 0x45)
   goto next_code;
  keycode = 0x68;
  break;
 }

 if (kbd->kb_type == KB_84) {
  switch (keycode) {
  case 0x37:
   if (state->ks_flags & SHIFTS)
    keycode = 0x5c;
   break;
  case 0x45:
   if (state->ks_flags & CTLS)
    keycode = 0x68;
   break;
  case 0x46:
   if (state->ks_flags & CTLS)
    keycode = 0x6c;
   break;
  }
 } else if (kbd->kb_type == KB_101) {
  switch (keycode) {
  case 0x5c:
   if (state->ks_flags & ALTS)
    keycode = 0x54;
   break;
  case 0x68:
   if (state->ks_flags & CTLS)
    keycode = 0x6c;
   break;
  }
 }


 if (state->ks_mode == K_CODE)
  return (keycode | (scancode & 0x80));


 if (state->ks_flags & COMPOSE) {
  switch (keycode | (scancode & 0x80)) {

  case 0x47: case 0x48: case 0x49:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x40;
   if (state->ks_composed_char > UCHAR_MAX)
    return ERRKEY;
   goto next_code;
  case 0x4B: case 0x4C: case 0x4D:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x47;
   if (state->ks_composed_char > UCHAR_MAX)
    return ERRKEY;
   goto next_code;
  case 0x4F: case 0x50: case 0x51:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x4E;
   if (state->ks_composed_char > UCHAR_MAX)
    return ERRKEY;
   goto next_code;
  case 0x52:
   state->ks_composed_char *= 10;
   if (state->ks_composed_char > UCHAR_MAX)
    return ERRKEY;
   goto next_code;


  case 0xC7: case 0xC8: case 0xC9:
  case 0xCB: case 0xCC: case 0xCD:
  case 0xCF: case 0xD0: case 0xD1:
  case 0xD2:
   goto next_code;

  case 0x38:
   break;

  default:
   if (state->ks_composed_char > 0) {
    state->ks_flags &= ~COMPOSE;
    state->ks_composed_char = 0;
    return ERRKEY;
   }
   break;
  }
 }


 action = genkbd_keyaction(kbd, keycode, scancode & 0x80,
      &state->ks_state, &state->ks_accents);
 if (action == NOKEY)
  goto next_code;
 else
  return action;
}
