
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beripic_clear_ipi (int ,int) ;
 int * picmap ;
 int platform_processor_id () ;

void
platform_ipi_clear(void)
{
 int cpuid;

 cpuid = platform_processor_id();

 beripic_clear_ipi(picmap[cpuid], cpuid);
}
