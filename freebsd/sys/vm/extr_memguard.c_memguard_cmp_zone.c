
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_3__ {int uz_flags; int uz_name; int uz_size; } ;


 int MG_GUARD_NOFREE ;
 int UMA_ZONE_NOFREE ;
 scalar_t__ memguard_cmp (int ) ;
 int memguard_options ;
 scalar_t__ strcmp (int ,int ) ;
 int vm_memguard_desc ;

int
memguard_cmp_zone(uma_zone_t zone)
{

 if ((memguard_options & MG_GUARD_NOFREE) == 0 &&
     zone->uz_flags & UMA_ZONE_NOFREE)
  return (0);

 if (memguard_cmp(zone->uz_size))
  return (1);





 return (strcmp(zone->uz_name, vm_memguard_desc) == 0);
}
