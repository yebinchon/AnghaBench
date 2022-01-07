
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ta_fgcolor; unsigned int ta_bgcolor; int ta_format; } ;
struct TYPE_5__ {TYPE_1__ t_curattr; TYPE_1__ t_defattr; } ;
typedef TYPE_2__ teken_t ;


 int TF_BLINK ;
 int TF_BOLD ;
 int TF_REVERSE ;
 int TF_UNDERLINE ;
 int teken_printf (char*,unsigned int) ;

__attribute__((used)) static void
teken_subr_set_graphic_rendition(teken_t *t, unsigned int ncmds,
    const unsigned int cmds[])
{
 unsigned int i, n;


 if (ncmds == 0) {
  t->t_curattr = t->t_defattr;
  return;
 }

 for (i = 0; i < ncmds; i++) {
  n = cmds[i];

  switch (n) {
  case 0:
   t->t_curattr = t->t_defattr;
   break;
  case 1:
   t->t_curattr.ta_format |= TF_BOLD;
   break;
  case 4:
   t->t_curattr.ta_format |= TF_UNDERLINE;
   break;
  case 5:
   t->t_curattr.ta_format |= TF_BLINK;
   break;
  case 7:
   t->t_curattr.ta_format |= TF_REVERSE;
   break;
  case 22:
   t->t_curattr.ta_format &= ~TF_BOLD;
   break;
  case 24:
   t->t_curattr.ta_format &= ~TF_UNDERLINE;
   break;
  case 25:
   t->t_curattr.ta_format &= ~TF_BLINK;
   break;
  case 27:
   t->t_curattr.ta_format &= ~TF_REVERSE;
   break;
  case 30:
  case 31:
  case 32:
  case 33:
  case 34:
  case 35:
  case 36:
  case 37:
   t->t_curattr.ta_fgcolor = n - 30;
   break;
  case 38:
   if (i + 2 >= ncmds || cmds[i + 1] != 5)
    continue;
   t->t_curattr.ta_fgcolor = cmds[i + 2];
   i += 2;
   break;
  case 39:
   t->t_curattr.ta_fgcolor = t->t_defattr.ta_fgcolor;
   break;
  case 40:
  case 41:
  case 42:
  case 43:
  case 44:
  case 45:
  case 46:
  case 47:
   t->t_curattr.ta_bgcolor = n - 40;
   break;
  case 48:
   if (i + 2 >= ncmds || cmds[i + 1] != 5)
    continue;
   t->t_curattr.ta_bgcolor = cmds[i + 2];
   i += 2;
   break;
  case 49:
   t->t_curattr.ta_bgcolor = t->t_defattr.ta_bgcolor;
   break;
  case 90:
  case 91:
  case 92:
  case 93:
  case 94:
  case 95:
  case 96:
  case 97:
   t->t_curattr.ta_fgcolor = (n - 90) + 8;
   break;
  case 100:
  case 101:
  case 102:
  case 103:
  case 104:
  case 105:
  case 106:
  case 107:
   t->t_curattr.ta_bgcolor = (n - 100) + 8;
   break;
  default:
   teken_printf("unsupported attribute %u\n", n);
  }
 }
}
