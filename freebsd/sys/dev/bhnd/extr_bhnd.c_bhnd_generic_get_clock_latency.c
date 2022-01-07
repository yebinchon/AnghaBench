
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_core_clkctl {int cc_pmu_dev; } ;
typedef scalar_t__ device_t ;
typedef int bhnd_clock ;


 int EINVAL ;
 struct bhnd_core_clkctl* bhnd_get_pmu_info (scalar_t__) ;
 int bhnd_pmu_get_clock_latency (int ,int ,int *) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int panic (char*) ;

int
bhnd_generic_get_clock_latency(device_t dev, device_t child, bhnd_clock clock,
    u_int *latency)
{
 struct bhnd_core_clkctl *clkctl;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 if ((clkctl = bhnd_get_pmu_info(child)) == ((void*)0))
  panic("no active PMU allocation");

 return (bhnd_pmu_get_clock_latency(clkctl->cc_pmu_dev, clock, latency));
}
