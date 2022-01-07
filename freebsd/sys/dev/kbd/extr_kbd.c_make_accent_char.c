
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u_int ;
struct acc_t {char accchar; char** map; } ;
struct TYPE_5__ {TYPE_1__* kb_accentmap; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_4__ {struct acc_t* acc; } ;


 char ERRKEY ;
 int NUM_ACCENTCHARS ;

__attribute__((used)) static u_int
make_accent_char(keyboard_t *kbd, u_int ch, int *accents)
{
 struct acc_t *acc;
 int i;

 acc = &kbd->kb_accentmap->acc[*accents - 1];
 *accents = 0;





 if (ch == ' ')
  return (acc->accchar);


 for (i = 0; i < NUM_ACCENTCHARS; ++i) {
  if (acc->map[i][0] == 0)
   break;
  if (acc->map[i][0] == ch)
   return (acc->map[i][1]);
 }

 return (ERRKEY);
}
