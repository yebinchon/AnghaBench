
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_group {int dummy; } ;


 struct cpu_group* platform_smp_topo () ;

struct cpu_group *
cpu_topo(void)
{
 return (platform_smp_topo());
}
