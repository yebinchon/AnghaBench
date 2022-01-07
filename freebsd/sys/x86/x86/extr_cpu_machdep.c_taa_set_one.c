
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int IA32_TSX_CTRL_RTM_DISABLE ;
 int IA32_TSX_CTRL_TSX_CPUID_CLEAR ;
 int MSR_IA32_TSX_CTRL ;
 int rdmsr (int ) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static void
taa_set_one(bool enable)
{
 uint64_t v;

 v = rdmsr(MSR_IA32_TSX_CTRL);
 if (enable)
  v |= (uint64_t)(IA32_TSX_CTRL_RTM_DISABLE |
      IA32_TSX_CTRL_TSX_CPUID_CLEAR);
 else
  v &= ~(uint64_t)(IA32_TSX_CTRL_RTM_DISABLE |
      IA32_TSX_CTRL_TSX_CPUID_CLEAR);

 wrmsr(MSR_IA32_TSX_CTRL, v);
}
