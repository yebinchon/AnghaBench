
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n_keys; TYPE_1__* key; } ;
typedef TYPE_2__ keymap_t ;
struct TYPE_4__ {int spcl; int* map; scalar_t__ flgs; } ;


 int NUM_STATES ;
 int SPECIAL ;
 int dump_entry (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_key_definition(char *name, keymap_t *keymap)
{
 int i, j;

 printf("static keymap_t keymap_%s = { 0x%02x, {\n",
        name, (unsigned)keymap->n_keys);
 printf(
"/*                                                         alt\n"
" * scan                       cntrl          alt    alt   cntrl\n"
" * code  base   shift  cntrl  shift   alt   shift  cntrl  shift    spcl flgs\n"
" * ---------------------------------------------------------------------------\n"
" */\n");
 for (i = 0; i < keymap->n_keys; i++) {
  printf("/*%02x*/{{", i);
  for (j = 0; j < NUM_STATES; j++) {
   if (keymap->key[i].spcl & (0x80 >> j))
    dump_entry(keymap->key[i].map[j] | SPECIAL);
   else
    dump_entry(keymap->key[i].map[j]);
  }
  printf("}, 0x%02X,0x%02X },\n",
         (unsigned)keymap->key[i].spcl,
         (unsigned)keymap->key[i].flgs);
 }
 printf("} };\n\n");
}
