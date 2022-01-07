
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int vendor_id; int vendor; } ;


 int cpu_vendor ;
 TYPE_1__* cpu_vendors ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static u_int
find_cpu_vendor_id(void)
{
 int i;

 for (i = 0; i < nitems(cpu_vendors); i++)
  if (strcmp(cpu_vendor, cpu_vendors[i].vendor) == 0)
   return (cpu_vendors[i].vendor_id);
 return (0);
}
