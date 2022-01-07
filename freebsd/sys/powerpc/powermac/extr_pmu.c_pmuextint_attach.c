
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ pmu ;
 int pmu_extint ;
 int setup_pmu_intr (scalar_t__,int ) ;

__attribute__((used)) static int
pmuextint_attach(device_t dev)
{
 pmu_extint = dev;
 if (pmu)
  return (setup_pmu_intr(pmu,dev));

 return (0);
}
