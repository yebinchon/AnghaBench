
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int register_t ;







 int HID0_DOZE ;
 char* HID0_E500MC_BITMASK ;
 char* HID0_E500_BITMASK ;
 char* HID0_E5500_BITMASK ;
 int HID0_NAP ;
 int HID0_SLEEP ;
 int SPR_HID0 ;
 int * cpu_idle_booke ;
 int * cpu_idle_e500mc ;
 int * cpu_idle_hook ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int printf (char*,int,int,char const*) ;

__attribute__((used)) static void
cpu_booke_setup(int cpuid, uint16_t vers)
{
 if (cpu_idle_hook == ((void*)0))
  cpu_idle_hook = cpu_idle_booke;
}
