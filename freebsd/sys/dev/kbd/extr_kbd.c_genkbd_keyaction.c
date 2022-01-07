
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct keyent_t {int flgs; int* map; int spcl; } ;
struct TYPE_8__ {int* kb_lastact; TYPE_1__* kb_keymap; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_7__ {struct keyent_t* key; } ;


 int AGRS ;
 int AGRS1 ;
 int AGRS2 ;

 int ALKDOWN ;
 int ALKED ;
 scalar_t__ ALTGR_OFFSET ;
 int ALTS ;
 int ALTS1 ;
 int ALTS2 ;

 int BKEY ;


 int CLKDOWN ;
 int CLKED ;
 int CTLS ;
 int CTLS1 ;
 int CTLS2 ;


 int FKEY ;
 int FLAG_LOCK_C ;
 int FLAG_LOCK_N ;
 int F_ACC ;
 int F_FN ;







 int L_ACC ;
 int L_FN ;

 int METAS ;
 int METAS1 ;
 int MKEY ;


 int NLKDOWN ;
 int NLKED ;
 int RELKEY ;


 int SHIFTAON ;
 int SHIFTS ;
 int SHIFTS1 ;
 int SHIFTS2 ;

 int SLKDOWN ;
 int SPCLKEY ;



 int make_accent_char (TYPE_2__*,int,int*) ;
 int save_accent_key (TYPE_2__*,int,int*) ;
 int set_lockkey_state (TYPE_2__*,int,int const) ;

int
genkbd_keyaction(keyboard_t *kbd, int keycode, int up, int *shiftstate,
   int *accents)
{
 struct keyent_t *key;
 int state = *shiftstate;
 int action;
 int f;
 int i;

 i = keycode;
 f = state & (AGRS | ALKED);
 if ((f == AGRS1) || (f == AGRS2) || (f == ALKED))
  i += ALTGR_OFFSET;
 key = &kbd->kb_keymap->key[i];
 i = ((state & SHIFTS) ? 1 : 0)
     | ((state & CTLS) ? 2 : 0)
     | ((state & ALTS) ? 4 : 0);
 if (((key->flgs & FLAG_LOCK_C) && (state & CLKED))
  || ((key->flgs & FLAG_LOCK_N) && (state & NLKED)) )
  i ^= 1;

 if (up) {
  action = kbd->kb_lastact[keycode];
  kbd->kb_lastact[keycode] = 142;
  switch (action) {
  case 147:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 148;

  case 148:
   state &= ~SHIFTS1;
   break;
  case 132:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 133;

  case 133:
   state &= ~SHIFTS2;
   break;
  case 149:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 150;

  case 150:
   state &= ~CTLS1;
   break;
  case 134:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 135;

  case 135:
   state &= ~CTLS2;
   break;
  case 151:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 152;

  case 152:
   state &= ~ALTS1;
   break;
  case 137:
   if (state & SHIFTAON) {
    set_lockkey_state(kbd, state, 159);
    state &= ~ALKDOWN;
   }
   action = 138;

  case 138:
   state &= ~ALTS2;
   break;
  case 158:
   state &= ~AGRS1;
   break;
  case 146:
   state &= ~METAS1;
   break;
  case 144:
   state &= ~NLKDOWN;
   break;
  case 156:
   state &= ~CLKDOWN;
   break;
  case 131:
   state &= ~SLKDOWN;
   break;
  case 159:
   state &= ~ALKDOWN;
   break;
  case 142:

   *shiftstate &= ~SHIFTAON;
   return (143);
  }
  *shiftstate = state & ~SHIFTAON;
  return (SPCLKEY | RELKEY | action);
 } else {
  action = key->map[i];
  state &= ~SHIFTAON;
  if (key->spcl & (0x80 >> i)) {

   if (kbd->kb_lastact[keycode] == 142)
    kbd->kb_lastact[keycode] = action;
   if (kbd->kb_lastact[keycode] != action)
    action = 142;
   switch (action) {

   case 144:
    set_lockkey_state(kbd, state, 144);
    break;
   case 156:
    set_lockkey_state(kbd, state, 156);
    break;
   case 131:
    set_lockkey_state(kbd, state, 131);
    break;
   case 159:
    set_lockkey_state(kbd, state, 159);
    break;

   case 130: case 136: case 128: case 129:
   case 155: case 145: case 139: case 140:
   case 153: case 141:
    *accents = 0;
    break;
   case 157:
    *accents = 0;
    action |= BKEY;
    break;
   case 147:
    state |= SHIFTAON;
    action = 148;

   case 148:
    state |= SHIFTS1;
    break;
   case 132:
    state |= SHIFTAON;
    action = 133;

   case 133:
    state |= SHIFTS2;
    break;
   case 149:
    state |= SHIFTAON;
    action = 150;

   case 150:
    state |= CTLS1;
    break;
   case 134:
    state |= SHIFTAON;
    action = 135;

   case 135:
    state |= CTLS2;
    break;
   case 151:
    state |= SHIFTAON;
    action = 152;

   case 152:
    state |= ALTS1;
    break;
   case 137:
    state |= SHIFTAON;
    action = 138;

   case 138:
    state |= ALTS2;
    break;
   case 158:
    state |= AGRS1;
    break;
   case 146:
    state |= METAS1;
    break;
   case 142:
    *shiftstate = state;
    return (143);
   default:

    *shiftstate = state;
    if (action >= F_ACC && action <= L_ACC) {
     action = save_accent_key(kbd, action,
         accents);
     switch (action) {
     case 143:
     case 154:
      return (action);
     default:
      if (state & METAS)
       return (action | MKEY);
      else
       return (action);
     }

    }

    if (*accents > 0) {
     *accents = 0;
     return (154);
    }
    if (action >= F_FN && action <= L_FN)
     action |= FKEY;

    return (SPCLKEY | action);
   }
   *shiftstate = state;
   return (SPCLKEY | action);
  } else {

   kbd->kb_lastact[keycode] = 142;
   *shiftstate = state;
   if (*accents > 0) {

    action = make_accent_char(kbd, action, accents);
    if (action == 154)
     return (action);
   }
   if (state & METAS)
    action |= MKEY;
   return (action);
  }
 }

}
