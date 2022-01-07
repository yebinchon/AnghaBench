
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_SHOWCURSOR ;
 int teken_funcs_cursor (int *) ;
 int teken_funcs_param (int *,int ,int) ;
 int teken_subr_do_reset (int *) ;
 int teken_subr_erase_display (int *,int) ;

__attribute__((used)) static void
teken_subr_reset_to_initial_state(teken_t *t)
{

 teken_subr_do_reset(t);
 teken_subr_erase_display(t, 2);
 teken_funcs_param(t, TP_SHOWCURSOR, 1);
 teken_funcs_cursor(t);
}
