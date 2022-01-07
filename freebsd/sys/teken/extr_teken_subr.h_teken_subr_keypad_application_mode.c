
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_KEYPADAPP ;
 int teken_funcs_param (int const*,int ,int) ;

__attribute__((used)) static void
teken_subr_keypad_application_mode(const teken_t *t)
{

 teken_funcs_param(t, TP_KEYPADAPP, 1);
}
