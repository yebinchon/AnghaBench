
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MSR_HV_SCONTROL ;
 int MSR_HV_SCTRL_RSVD_MASK ;
 scalar_t__ MSR_HV_SIEFP ;
 int MSR_HV_SIEFP_RSVD_MASK ;
 scalar_t__ MSR_HV_SIMP ;
 int MSR_HV_SIMP_RSVD_MASK ;
 scalar_t__ MSR_HV_SINT0 ;
 int MSR_HV_SINT_MASKED ;
 scalar_t__ VMBUS_SINT_MESSAGE ;
 scalar_t__ VMBUS_SINT_TIMER ;
 int rdmsr (scalar_t__) ;
 int wrmsr (scalar_t__,int) ;

__attribute__((used)) static void
vmbus_synic_teardown(void *arg)
{
 uint64_t orig;
 uint32_t sint;




 orig = rdmsr(MSR_HV_SCONTROL);
 wrmsr(MSR_HV_SCONTROL, (orig & MSR_HV_SCTRL_RSVD_MASK));




 sint = MSR_HV_SINT0 + VMBUS_SINT_MESSAGE;
 orig = rdmsr(sint);
 wrmsr(sint, orig | MSR_HV_SINT_MASKED);




 sint = MSR_HV_SINT0 + VMBUS_SINT_TIMER;
 orig = rdmsr(sint);
 wrmsr(sint, orig | MSR_HV_SINT_MASKED);




 orig = rdmsr(MSR_HV_SIMP);
 wrmsr(MSR_HV_SIMP, (orig & MSR_HV_SIMP_RSVD_MASK));




 orig = rdmsr(MSR_HV_SIEFP);
 wrmsr(MSR_HV_SIEFP, (orig & MSR_HV_SIEFP_RSVD_MASK));
}
