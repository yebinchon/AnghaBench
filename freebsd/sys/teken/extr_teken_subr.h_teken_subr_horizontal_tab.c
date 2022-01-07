
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int teken_subr_cursor_forward_tabulation (int *,int) ;

__attribute__((used)) static void
teken_subr_horizontal_tab(teken_t *t)
{

 teken_subr_cursor_forward_tabulation(t, 1);
}
