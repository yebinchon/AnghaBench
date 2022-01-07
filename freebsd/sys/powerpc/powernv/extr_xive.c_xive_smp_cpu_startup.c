
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xive_setup_cpu () ;

__attribute__((used)) static void
xive_smp_cpu_startup(void)
{

 xive_setup_cpu();
}
