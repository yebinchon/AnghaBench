
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct bcm_platform {int cid; int cc_caps; } ;
typedef scalar_t__ bus_size_t ;


 int BCM_CHIPC_READ_4 (struct bcm_platform*,scalar_t__) ;
 int CHIPC_CAP_PLL ;
 scalar_t__ CHIPC_CLKC_N ;
 int CHIPC_GET_BITS (int ,int ) ;
 int bcm_get_pmu (struct bcm_platform*) ;
 scalar_t__ bcm_has_pmu (struct bcm_platform*) ;
 int bhnd_pmu_cpu_clock (int ) ;
 scalar_t__ bhnd_pwrctl_cpu_clkreg_m (int *,int ,int *) ;
 int bhnd_pwrctl_cpu_clock_rate (int *,int ,int ,int ) ;

uint64_t
bcm_get_cpufreq(struct bcm_platform *bp)
{
 uint32_t fixed_hz;
 uint32_t n, m;
 bus_size_t mreg;
 uint8_t pll_type;


 if (bcm_has_pmu(bp))
  return (bhnd_pmu_cpu_clock(bcm_get_pmu(bp)));




 pll_type = CHIPC_GET_BITS(bp->cc_caps, CHIPC_CAP_PLL);
 mreg = bhnd_pwrctl_cpu_clkreg_m(&bp->cid, pll_type, &fixed_hz);
 if (mreg == 0)
  return (fixed_hz);

 n = BCM_CHIPC_READ_4(bp, CHIPC_CLKC_N);
 m = BCM_CHIPC_READ_4(bp, mreg);

 return (bhnd_pwrctl_cpu_clock_rate(&bp->cid, pll_type, n, m));

}
