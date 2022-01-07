
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ IA32_SPEC_CTRL_SSBD ;
 int MSR_IA32_SPEC_CTRL ;
 int rdmsr (int ) ;
 int wrmsr (int ,int ) ;

__attribute__((used)) static void
hw_ssb_set_one(bool enable)
{
 uint64_t v;

 v = rdmsr(MSR_IA32_SPEC_CTRL);
 if (enable)
  v |= (uint64_t)IA32_SPEC_CTRL_SSBD;
 else
  v &= ~(uint64_t)IA32_SPEC_CTRL_SSBD;
 wrmsr(MSR_IA32_SPEC_CTRL, v);
}
