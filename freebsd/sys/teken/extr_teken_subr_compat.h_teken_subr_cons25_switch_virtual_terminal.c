
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_SWITCHVT ;
 int teken_funcs_param (int const*,int ,unsigned int) ;

__attribute__((used)) static void
teken_subr_cons25_switch_virtual_terminal(const teken_t *t, unsigned int vt)
{

 teken_funcs_param(t, TP_SWITCHVT, vt);
}
