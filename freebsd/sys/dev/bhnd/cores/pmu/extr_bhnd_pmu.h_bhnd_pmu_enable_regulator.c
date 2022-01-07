
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_pmu_regulator ;


 int BHND_PMU_ENABLE_REGULATOR (int ,int ) ;

__attribute__((used)) static inline int
bhnd_pmu_enable_regulator(device_t dev, bhnd_pmu_regulator regulator)
{
 return (BHND_PMU_ENABLE_REGULATOR(dev, regulator));
}
