
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int TP_SETBELLPD ;
 int teken_funcs_param (int const*,int ,unsigned int) ;

__attribute__((used)) static void
teken_subr_cons25_set_bell_pitch_duration(const teken_t *t, unsigned int pitch,
    unsigned int duration)
{

 teken_funcs_param(t, TP_SETBELLPD, (pitch << 16) |
     (duration & 0xffff));
}
