
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;


 unsigned long long rdmsr (int) ;

__attribute__((used)) static uint32_t
vmx_settable(uint64_t basic, int msr, int true_msr)
{
 uint64_t val;

 if (basic & (1ULL << 55))
  val = rdmsr(true_msr);
 else
  val = rdmsr(msr);


 return (val >> 32);
}
