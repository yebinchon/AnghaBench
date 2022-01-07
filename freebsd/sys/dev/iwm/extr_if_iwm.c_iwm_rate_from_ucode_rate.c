
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ plcp; scalar_t__ rate; } ;


 int IWM_RIDX_MAX ;
 TYPE_1__* iwm_rates ;

__attribute__((used)) static uint8_t
iwm_rate_from_ucode_rate(uint32_t rate_n_flags)
{
 uint8_t plcp = rate_n_flags & 0xff;
 int i;

 for (i = 0; i <= IWM_RIDX_MAX; i++) {
  if (iwm_rates[i].plcp == plcp)
   return iwm_rates[i].rate;
 }
 return 0;
}
