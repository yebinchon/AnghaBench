
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_defattr; int t_curattr; } ;
typedef TYPE_1__ teken_t ;


 int teken_printf (char*,unsigned int) ;

__attribute__((used)) static void
teken_subr_cons25_set_graphic_rendition(teken_t *t, unsigned int cmd,
    unsigned int param)
{

 (void)param;
 switch (cmd) {
 case 0:
  t->t_curattr = t->t_defattr;
  break;
 default:
  teken_printf("unsupported attribute %u\n", cmd);
 }
}
