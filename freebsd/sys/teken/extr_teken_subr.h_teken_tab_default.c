
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_tabstops; } ;
typedef TYPE_1__ teken_t ;


 int T_NUMCOL ;
 int memset (int ,int ,int) ;
 int teken_tab_set (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void
teken_tab_default(teken_t *t)
{
 unsigned int i;

 memset(t->t_tabstops, 0, T_NUMCOL / 8);

 for (i = 8; i < T_NUMCOL; i += 8)
  teken_tab_set(t, i);
}
