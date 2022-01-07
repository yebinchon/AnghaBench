
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beri_get_cpu () ;

int
platform_processor_id(void)
{
 int cpu;

 cpu = beri_get_cpu();

 return (cpu);
}
