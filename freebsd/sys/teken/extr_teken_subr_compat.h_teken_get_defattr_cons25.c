
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ta_format; int ta_bgcolor; int ta_fgcolor; } ;
struct TYPE_5__ {TYPE_1__ t_defattr; } ;
typedef TYPE_2__ teken_t ;


 int TF_BOLD ;
 int* cons25_revcolors ;
 size_t teken_256to8 (int ) ;

void
teken_get_defattr_cons25(const teken_t *t, int *fg, int *bg)
{

 *fg = cons25_revcolors[teken_256to8(t->t_defattr.ta_fgcolor)];
 if (t->t_defattr.ta_format & TF_BOLD)
  *fg += 8;
 *bg = cons25_revcolors[teken_256to8(t->t_defattr.ta_bgcolor)];
}
