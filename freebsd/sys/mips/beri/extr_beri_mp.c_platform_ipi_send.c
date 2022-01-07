
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beripic_send_ipi (int ,int) ;
 int mips_sync () ;
 int * picmap ;

void
platform_ipi_send(int cpuid)
{

 mips_sync();

 beripic_send_ipi(picmap[cpuid], cpuid);
}
