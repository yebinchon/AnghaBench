
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* key; } ;
typedef TYPE_2__ keymap_t ;
struct TYPE_4__ {int spcl; int* map; void* flgs; } ;


 void* NUM_KEYS ;
 int NUM_STATES ;
 int SPECIAL ;
 int TFLAG ;
 int get_entry () ;
 void* number ;
 int token ;
 int yylex () ;

__attribute__((used)) static int
get_key_definition_line(keymap_t *map)
{
 int i, def, scancode;


 if (number < 0 || number >= NUM_KEYS)
  return -1;
 scancode = number;


 map->key[scancode].spcl = 0;
 for (i=0; i<NUM_STATES; i++) {
  if ((def = get_entry()) == -1)
   return -1;
  if (def & SPECIAL)
   map->key[scancode].spcl |= (0x80 >> i);
  map->key[scancode].map[i] = def & ~SPECIAL;
 }

 if ((token = yylex()) != TFLAG)
  return -1;
 map->key[scancode].flgs = number;
 token = yylex();
 return (scancode + 1);
}
