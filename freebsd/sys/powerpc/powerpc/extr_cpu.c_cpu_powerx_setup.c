
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;






 int LPCR_PECE_WAKESET ;
 int PSL_HV ;
 int SPR_FSCR ;
 int SPR_LPCR ;
 int cpu_idle_hook ;
 int cpu_idle_power9 ;
 int cpu_idle_powerx ;
 int isync () ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void
cpu_powerx_setup(int cpuid, uint16_t vers)
{
}
