
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {TYPE_1__* kb_accentmap; } ;
typedef TYPE_3__ keyboard_t ;
struct TYPE_6__ {scalar_t__ accchar; } ;
struct TYPE_5__ {int n_accs; TYPE_2__* acc; } ;


 int ERRKEY ;
 int F_ACC ;
 int NOKEY ;

__attribute__((used)) static u_int
save_accent_key(keyboard_t *kbd, u_int key, int *accents)
{
 int i;


 i = key - F_ACC + 1;
 if ((i > kbd->kb_accentmap->n_accs)
     || (kbd->kb_accentmap->acc[i - 1].accchar == 0)) {

  *accents = 0;
  return (ERRKEY);
 }





 if (i == *accents) {
  key = kbd->kb_accentmap->acc[i - 1].accchar;
  *accents = 0;
  return (key);
 }


 *accents = i;
 return (NOKEY);
}
