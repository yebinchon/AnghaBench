
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_chipid {int dummy; } ;


 int KASSERT (int,char*) ;
 int bhnd_pwrctl_clock_rate (int ,int ,int ) ;
 scalar_t__ bhnd_pwrctl_cpu_clkreg_m (struct bhnd_chipid const*,int ,int *) ;

uint32_t
bhnd_pwrctl_cpu_clock_rate(const struct bhnd_chipid *cid,
    uint32_t pll_type, uint32_t n, uint32_t m)
{
 KASSERT(bhnd_pwrctl_cpu_clkreg_m(cid, pll_type, ((void*)0)) != 0,
     ("can't compute clock rate on fixed clock"));

 return (bhnd_pwrctl_clock_rate(pll_type, n, m));
}
