
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AMDID_RDTSCP ;
 scalar_t__ __predict_true (int) ;
 int amd_feature ;
 int get_cyclecount () ;
 int rdtsc () ;
 int rdtscp () ;

uint64_t
pmc_rdtsc(void)
{

 if (__predict_true(amd_feature & AMDID_RDTSCP))
  return rdtscp();
 else
  return rdtsc();



}
