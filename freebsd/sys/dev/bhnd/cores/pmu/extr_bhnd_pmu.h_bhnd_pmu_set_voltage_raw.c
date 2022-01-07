
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;
typedef int bhnd_pmu_regulator ;


 int BHND_PMU_SET_VOLTAGE_RAW (int ,int ,int ) ;

__attribute__((used)) static inline int
bhnd_pmu_set_voltage_raw(device_t dev, bhnd_pmu_regulator regulator,
    uint32_t value)
{
 return (BHND_PMU_SET_VOLTAGE_RAW(dev, regulator, value));
}
