
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;
typedef int bhnd_clock ;


 int BHND_PMU_GET_CLOCK_LATENCY (int ,int ,int *) ;

__attribute__((used)) static inline int
bhnd_pmu_get_clock_latency(device_t dev, bhnd_clock clock, u_int *latency)
{
 return (BHND_PMU_GET_CLOCK_LATENCY(dev, clock, latency));
}
