
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ __register_t ;


 scalar_t__ CFE_EPTSEAL ;
 int bcm_get_cpufreq (int ) ;
 int bcm_get_platform () ;
 int bcm_init_platform_data (int *) ;
 int bcm_platform_data ;
 int cfe_init (scalar_t__,scalar_t__) ;
 int cninit () ;
 int edata ;
 int end ;
 int memset (int *,int ,scalar_t__) ;
 int mips_init () ;
 int mips_pcpu0_init () ;
 int mips_postboot_fixup () ;
 int mips_timer_early_init (int) ;
 int mips_timer_init_params (int,int) ;
 int panic (char*,int) ;

void
platform_start(__register_t a0, __register_t a1, __register_t a2,
        __register_t a3)
{
 vm_offset_t kernend;
 uint64_t platform_counter_freq;
 int error;


 kernend = (vm_offset_t)&end;
 memset(&edata, 0, kernend - (vm_offset_t)(&edata));

 mips_postboot_fixup();


 mips_pcpu0_init();
 if ((error = bcm_init_platform_data(&bcm_platform_data)))
  panic("bcm_init_platform_data() failed: %d", error);

 platform_counter_freq = bcm_get_cpufreq(bcm_get_platform());


 mips_timer_early_init(platform_counter_freq / 2);

 cninit();

 mips_init();

 mips_timer_init_params(platform_counter_freq, 1);
}
