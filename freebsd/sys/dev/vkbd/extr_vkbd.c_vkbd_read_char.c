
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ks_flags; scalar_t__ ks_composed_char; scalar_t__ ks_mode; int ks_prefix; int ks_accents; int ks_state; } ;
typedef TYPE_1__ vkbd_state_t ;
typedef int u_int ;
struct TYPE_9__ {scalar_t__ kb_type; int kb_count; scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;


 int ALTS ;
 int COMPOSE ;
 int CTLS ;
 int ERRKEY ;
 scalar_t__ KB_101 ;
 scalar_t__ KB_84 ;
 scalar_t__ K_CODE ;
 scalar_t__ K_RAW ;
 int NOKEY ;
 int SHIFTS ;
 int UCHAR_MAX ;
 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;
 int genkbd_keyaction (TYPE_2__*,int,int,int *,int *) ;
 int vkbd_data_read (TYPE_1__*,int) ;

__attribute__((used)) static u_int
vkbd_read_char(keyboard_t *kbd, int wait)
{
 vkbd_state_t *state = (vkbd_state_t *) kbd->kb_data;
 u_int action;
 int scancode, keycode;

 VKBD_LOCK(state);

next_code:


 if (!(state->ks_flags & COMPOSE) && (state->ks_composed_char > 0)) {
  action = state->ks_composed_char;
  state->ks_composed_char = 0;
  if (action > UCHAR_MAX) {
   VKBD_UNLOCK(state);
   return (ERRKEY);
  }

  VKBD_UNLOCK(state);
  return (action);
 }


 scancode = vkbd_data_read(state, wait);
 if (scancode == -1) {
  VKBD_UNLOCK(state);
  return (NOKEY);
 }


 kbd->kb_count ++;


 if (state->ks_mode == K_RAW) {
  VKBD_UNLOCK(state);
  return (scancode);
 }


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


 if (state->ks_mode == K_CODE) {
  VKBD_UNLOCK(state);
  return (keycode | (scancode & 0x80));
 }


 if (state->ks_flags & COMPOSE) {
  switch (keycode | (scancode & 0x80)) {

  case 0x47: case 0x48: case 0x49:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x40;
   if (state->ks_composed_char > UCHAR_MAX) {
    VKBD_UNLOCK(state);
    return (ERRKEY);
   }
   goto next_code;
  case 0x4B: case 0x4C: case 0x4D:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x47;
   if (state->ks_composed_char > UCHAR_MAX) {
    VKBD_UNLOCK(state);
    return (ERRKEY);
   }
   goto next_code;
  case 0x4F: case 0x50: case 0x51:
   state->ks_composed_char *= 10;
   state->ks_composed_char += keycode - 0x4E;
   if (state->ks_composed_char > UCHAR_MAX) {
    VKBD_UNLOCK(state);
    return (ERRKEY);
   }
   goto next_code;
  case 0x52:
   state->ks_composed_char *= 10;
   if (state->ks_composed_char > UCHAR_MAX) {
    VKBD_UNLOCK(state);
    return (ERRKEY);
   }
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
    VKBD_UNLOCK(state);
    return (ERRKEY);
   }
   break;
  }
 }


 action = genkbd_keyaction(kbd, keycode, scancode & 0x80,
   &state->ks_state, &state->ks_accents);
 if (action == NOKEY)
  goto next_code;

 VKBD_UNLOCK(state);

 return (action);
}
