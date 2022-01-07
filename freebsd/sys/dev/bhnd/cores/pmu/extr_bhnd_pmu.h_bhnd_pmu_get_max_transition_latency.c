
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int BHND_PMU_GET_MAX_TRANSITION_LATENCY (int ) ;

__attribute__((used)) static inline u_int
bhnd_pmu_get_max_transition_latency(device_t dev)
{
 return (BHND_PMU_GET_MAX_TRANSITION_LATENCY(dev));
}
