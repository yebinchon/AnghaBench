
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_18__ ;


typedef int u_long ;
struct TYPE_28__ {TYPE_1__* key; int n_keys; } ;
typedef TYPE_2__ okeymap_t ;
struct TYPE_29__ {struct TYPE_29__* key; int flgs; int spcl; int * map; int n_keys; } ;
typedef TYPE_3__ keymap_t ;
struct TYPE_30__ {int kb_type; int kb_delay1; int kb_delay2; size_t kb_fkeytab_size; TYPE_18__* kb_fkeytab; TYPE_3__* kb_accentmap; TYPE_3__* kb_keymap; int kb_flags; int kb_config; int kb_unit; TYPE_3__* kb_name; int kb_index; } ;
typedef TYPE_4__ keyboard_t ;
struct TYPE_31__ {int kb_type; int kb_flags; int kb_config; int kb_unit; TYPE_3__* kb_name; int kb_index; } ;
typedef TYPE_5__ keyboard_info_t ;
struct TYPE_32__ {int keynum; TYPE_3__ key; } ;
typedef TYPE_6__ keyarg_t ;
struct TYPE_33__ {size_t keynum; int flen; TYPE_3__* keydef; } ;
typedef TYPE_7__ fkeyarg_t ;
typedef TYPE_3__* caddr_t ;
typedef int accentmap_t ;
struct TYPE_27__ {int flgs; int spcl; int * map; } ;
struct TYPE_26__ {int len; TYPE_3__* str; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOIOCTL ;







 int MAXFK ;
 int M_TEMP ;
 int M_WAITOK ;
 int NUM_KEYS ;
 int NUM_STATES ;






 int accent_change_ok (TYPE_3__*,int *,int ) ;
 int bcopy (TYPE_3__*,TYPE_3__*,int) ;
 int bzero (TYPE_3__*,int) ;
 int copyin (void*,TYPE_3__*,int) ;
 int copyout (TYPE_3__*,void*,int) ;
 int curthread ;
 int fkey_change_ok (TYPE_18__*,TYPE_7__*,int ) ;
 int free (TYPE_3__*,int ) ;
 int imin (int ,int) ;
 int key_change_ok (TYPE_3__*,TYPE_3__*,int ) ;
 int keymap_change_ok (TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_3__* malloc (int,int ,int ) ;
 int min (int,int ) ;
 int spltty () ;
 int splx (int) ;
 int strlen (TYPE_3__*) ;

int
genkbd_commonioctl(keyboard_t *kbd, u_long cmd, caddr_t arg)
{
 keymap_t *mapp;
 okeymap_t *omapp;
 keyarg_t *keyp;
 fkeyarg_t *fkeyp;
 int s;
 int i, j;
 int error;

 s = spltty();
 switch (cmd) {

 case 135:
  ((keyboard_info_t *)arg)->kb_index = kbd->kb_index;
  i = imin(strlen(kbd->kb_name) + 1,
      sizeof(((keyboard_info_t *)arg)->kb_name));
  bcopy(kbd->kb_name, ((keyboard_info_t *)arg)->kb_name, i);
  ((keyboard_info_t *)arg)->kb_unit = kbd->kb_unit;
  ((keyboard_info_t *)arg)->kb_type = kbd->kb_type;
  ((keyboard_info_t *)arg)->kb_config = kbd->kb_config;
  ((keyboard_info_t *)arg)->kb_flags = kbd->kb_flags;
  break;

 case 134:
  *(int *)arg = kbd->kb_type;
  break;

 case 136:
  ((int *)arg)[0] = kbd->kb_delay1;
  ((int *)arg)[1] = kbd->kb_delay2;
  break;

 case 138:
  error = copyout(kbd->kb_keymap, *(void **)arg,
      sizeof(keymap_t));
  splx(s);
  return (error);
 case 133:
  mapp = kbd->kb_keymap;
  omapp = (okeymap_t *)arg;
  omapp->n_keys = mapp->n_keys;
  for (i = 0; i < NUM_KEYS; i++) {
   for (j = 0; j < NUM_STATES; j++)
    omapp->key[i].map[j] =
        mapp->key[i].map[j];
   omapp->key[i].spcl = mapp->key[i].spcl;
   omapp->key[i].flgs = mapp->key[i].flgs;
  }
  break;
 case 130:
 case 132:

  mapp = malloc(sizeof *mapp, M_TEMP, M_WAITOK);
  if (cmd == 132) {
   omapp = (okeymap_t *)arg;
   mapp->n_keys = omapp->n_keys;
   for (i = 0; i < NUM_KEYS; i++) {
    for (j = 0; j < NUM_STATES; j++)
     mapp->key[i].map[j] =
         omapp->key[i].map[j];
    mapp->key[i].spcl = omapp->key[i].spcl;
    mapp->key[i].flgs = omapp->key[i].flgs;
   }
  } else {
   error = copyin(*(void **)arg, mapp, sizeof *mapp);
   if (error != 0) {
    splx(s);
    free(mapp, M_TEMP);
    return (error);
   }
  }

  error = keymap_change_ok(kbd->kb_keymap, mapp, curthread);
  if (error != 0) {
   splx(s);
   free(mapp, M_TEMP);
   return (error);
  }
  bzero(kbd->kb_accentmap, sizeof(*kbd->kb_accentmap));
  bcopy(mapp, kbd->kb_keymap, sizeof(*kbd->kb_keymap));
  free(mapp, M_TEMP);
  break;





 case 137:
  keyp = (keyarg_t *)arg;
  if (keyp->keynum >= sizeof(kbd->kb_keymap->key) /
      sizeof(kbd->kb_keymap->key[0])) {
   splx(s);
   return (EINVAL);
  }
  bcopy(&kbd->kb_keymap->key[keyp->keynum], &keyp->key,
      sizeof(keyp->key));
  break;
 case 129:

  keyp = (keyarg_t *)arg;
  if (keyp->keynum >= sizeof(kbd->kb_keymap->key) /
      sizeof(kbd->kb_keymap->key[0])) {
   splx(s);
   return (EINVAL);
  }
  error = key_change_ok(&kbd->kb_keymap->key[keyp->keynum],
      &keyp->key, curthread);
  if (error != 0) {
   splx(s);
   return (error);
  }
  bcopy(&keyp->key, &kbd->kb_keymap->key[keyp->keynum],
      sizeof(keyp->key));
  break;





 case 139:
  bcopy(kbd->kb_accentmap, arg, sizeof(*kbd->kb_accentmap));
  break;
 case 131:

  error = accent_change_ok(kbd->kb_accentmap,
      (accentmap_t *)arg, curthread);
  if (error != 0) {
   splx(s);
   return (error);
  }
  bcopy(arg, kbd->kb_accentmap, sizeof(*kbd->kb_accentmap));
  break;





 case 140:
  fkeyp = (fkeyarg_t *)arg;
  if (fkeyp->keynum >= kbd->kb_fkeytab_size) {
   splx(s);
   return (EINVAL);
  }
  bcopy(kbd->kb_fkeytab[fkeyp->keynum].str, fkeyp->keydef,
      kbd->kb_fkeytab[fkeyp->keynum].len);
  fkeyp->flen = kbd->kb_fkeytab[fkeyp->keynum].len;
  break;
 case 128:

  fkeyp = (fkeyarg_t *)arg;
  if (fkeyp->keynum >= kbd->kb_fkeytab_size) {
   splx(s);
   return (EINVAL);
  }
  error = fkey_change_ok(&kbd->kb_fkeytab[fkeyp->keynum],
      fkeyp, curthread);
  if (error != 0) {
   splx(s);
   return (error);
  }
  kbd->kb_fkeytab[fkeyp->keynum].len = min(fkeyp->flen, MAXFK);
  bcopy(fkeyp->keydef, kbd->kb_fkeytab[fkeyp->keynum].str,
      kbd->kb_fkeytab[fkeyp->keynum].len);
  break;





 default:
  splx(s);
  return (ENOIOCTL);
 }

 splx(s);
 return (0);
}
