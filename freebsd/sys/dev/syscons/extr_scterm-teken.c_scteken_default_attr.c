
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ts_teken; } ;
typedef TYPE_1__ teken_stat ;
typedef int teken_attr_t ;
struct TYPE_5__ {TYPE_1__* ts; } ;
typedef TYPE_2__ scr_stat ;


 int scteken_sc_to_te_attr (int,int *) ;
 int teken_set_defattr (int *,int *) ;

__attribute__((used)) static void
scteken_default_attr(scr_stat *scp, int color, int rev_color)
{
 teken_stat *ts = scp->ts;
 teken_attr_t ta;

 scteken_sc_to_te_attr(color, &ta);
 teken_set_defattr(&ts->ts_teken, &ta);
}
