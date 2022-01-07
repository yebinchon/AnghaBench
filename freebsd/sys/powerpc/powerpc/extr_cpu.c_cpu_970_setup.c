
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int HID0_970_BITMASK ;
 int HID0_DEEPNAP ;
 int HID0_DOZE ;
 int HID0_DPM ;
 int HID0_NAP ;

 int cpu_idle_60x ;
 int cpu_idle_hook ;
 int powerpc_pow_enabled ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static void
cpu_970_setup(int cpuid, uint16_t vers)
{
 cpu_idle_hook = cpu_idle_60x;
}
