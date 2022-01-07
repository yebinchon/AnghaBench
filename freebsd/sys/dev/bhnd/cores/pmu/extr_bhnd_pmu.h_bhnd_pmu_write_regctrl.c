
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 void BHND_PMU_WRITE_REGCTRL (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
bhnd_pmu_write_regctrl(device_t dev, uint32_t reg, uint32_t value,
    uint32_t mask)
{
 return (BHND_PMU_WRITE_REGCTRL(dev, reg, value, mask));
}
