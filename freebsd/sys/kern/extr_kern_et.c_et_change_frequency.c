
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct eventtimer {int dummy; } ;


 int cpu_et_frequency (struct eventtimer*,int ) ;

void
et_change_frequency(struct eventtimer *et, uint64_t newfreq)
{


 cpu_et_frequency(et, newfreq);

}
