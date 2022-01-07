
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int BHND_PMU_READ_CHIPCTRL (int ,int ) ;

__attribute__((used)) static inline uint32_t
bhnd_pmu_read_chipctrl(device_t dev, uint32_t reg)
{
 return (BHND_PMU_READ_CHIPCTRL(dev, reg));
}
