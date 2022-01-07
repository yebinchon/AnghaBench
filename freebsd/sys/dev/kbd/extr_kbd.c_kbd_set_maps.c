
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int keymap_t ;
struct TYPE_3__ {int kb_fkeytab_size; int * kb_fkeytab; int * kb_accentmap; int * kb_keymap; } ;
typedef TYPE_1__ keyboard_t ;
typedef int fkeytab_t ;
typedef int accentmap_t ;



void
kbd_set_maps(keyboard_t *kbd, keymap_t *keymap, accentmap_t *accmap,
      fkeytab_t *fkeymap, int fkeymap_size)
{
 kbd->kb_keymap = keymap;
 kbd->kb_accentmap = accmap;
 kbd->kb_fkeytab = fkeymap;
 kbd->kb_fkeytab_size = fkeymap_size;
}
