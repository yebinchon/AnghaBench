
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MSR_HV_TIME_REF_COUNT ;
 int rdmsr (int ) ;

__attribute__((used)) static uint64_t
hyperv_tc64_rdmsr(void)
{

 return (rdmsr(MSR_HV_TIME_REF_COUNT));
}
