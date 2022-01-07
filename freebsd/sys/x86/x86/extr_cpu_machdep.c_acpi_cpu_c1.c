
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
acpi_cpu_c1(void)
{

 __asm __volatile("sti; hlt");
}
