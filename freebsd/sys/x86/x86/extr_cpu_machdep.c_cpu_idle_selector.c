
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id_cpuid2_flag; char* id_name; int id_fn; } ;


 scalar_t__ bootverbose ;
 int cpu_feature2 ;
 int cpu_idle_fn ;
 int * cpu_idle_hook ;
 TYPE_1__* idle_tbl ;
 int nitems (TYPE_1__*) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static bool
cpu_idle_selector(const char *new_idle_name)
{
 int i;

 for (i = 0; i < nitems(idle_tbl); i++) {
  if (idle_tbl[i].id_cpuid2_flag != 0 &&
      (cpu_feature2 & idle_tbl[i].id_cpuid2_flag) == 0)
   continue;
  if (strcmp(idle_tbl[i].id_name, "acpi") == 0 &&
      cpu_idle_hook == ((void*)0))
   continue;
  if (strcmp(idle_tbl[i].id_name, new_idle_name))
   continue;
  cpu_idle_fn = idle_tbl[i].id_fn;
  if (bootverbose)
   printf("CPU idle set to %s\n", idle_tbl[i].id_name);
  return (1);
 }
 return (0);
}
