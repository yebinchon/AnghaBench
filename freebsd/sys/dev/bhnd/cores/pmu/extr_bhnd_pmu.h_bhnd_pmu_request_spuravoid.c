
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_pmu_spuravoid ;


 int BHND_PMU_REQUEST_SPURAVOID (int ,int ) ;

__attribute__((used)) static inline int
bhnd_pmu_request_spuravoid(device_t dev, bhnd_pmu_spuravoid spuravoid)
{
 return (BHND_PMU_REQUEST_SPURAVOID(dev, spuravoid));
}
