
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zone ;
typedef TYPE_1__* uma_zone_t ;
struct TYPE_9__ {scalar_t__ td_critnest; } ;
struct TYPE_8__ {int uz_name; } ;


 int CTR5 (int ,char*,TYPE_5__*,int ,TYPE_1__*,int,int) ;
 int KASSERT (int,char*) ;
 int KTR_UMA ;
 int M_WAITOK ;
 int RANDOM_UMA ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*,int ) ;
 TYPE_5__* curthread ;
 int random_harvest_fast_uma (TYPE_1__**,int,int ) ;
 void* zone_alloc_item (TYPE_1__*,void*,int,int) ;

void *
uma_zalloc_domain(uma_zone_t zone, void *udata, int domain, int flags)
{


 random_harvest_fast_uma(&zone, sizeof(zone), RANDOM_UMA);


 CTR5(KTR_UMA,
     "uma_zalloc_domain thread %x zone %s(%p) domain %d flags %d",
     curthread, zone->uz_name, zone, domain, flags);

 if (flags & M_WAITOK) {
  WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
      "uma_zalloc_domain: zone \"%s\"", zone->uz_name);
 }
 KASSERT(curthread->td_critnest == 0 || SCHEDULER_STOPPED(),
     ("uma_zalloc_domain: called with spinlock or critical section held"));

 return (zone_alloc_item(zone, udata, domain, flags));
}
