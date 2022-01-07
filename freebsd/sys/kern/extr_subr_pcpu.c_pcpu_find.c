
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct pcpu {int dummy; } ;


 struct pcpu** cpuid_to_pcpu ;

struct pcpu *
pcpu_find(u_int cpuid)
{

 return (cpuid_to_pcpu[cpuid]);
}
