
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_SETLOCALCURSOR ;
 int teken_funcs_param (int const*,int ,unsigned int) ;

__attribute__((used)) static void
teken_subr_cons25_set_local_cursor_type(const teken_t *t, unsigned int type)
{

 teken_funcs_param(t, TP_SETLOCALCURSOR, type);
}
