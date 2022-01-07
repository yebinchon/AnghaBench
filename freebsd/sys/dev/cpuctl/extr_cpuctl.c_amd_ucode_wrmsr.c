
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_K8_UCODE_UPDATE ;
 int do_cpuid (int ,int *) ;
 int wrmsr_safe (int ,uintptr_t) ;

__attribute__((used)) static void
amd_ucode_wrmsr(void *ucode_ptr)
{
 uint32_t tmp[4];

 wrmsr_safe(MSR_K8_UCODE_UPDATE, (uintptr_t)ucode_ptr);
 do_cpuid(0, tmp);
}
