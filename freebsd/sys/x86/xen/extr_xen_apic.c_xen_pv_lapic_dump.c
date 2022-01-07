
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_GET (int ) ;
 int cpuid ;
 int printf (char*,int,char const*) ;

__attribute__((used)) static void
xen_pv_lapic_dump(const char *str)
{

 printf("cpu%d %s XEN PV LAPIC\n", PCPU_GET(cpuid), str);
}
