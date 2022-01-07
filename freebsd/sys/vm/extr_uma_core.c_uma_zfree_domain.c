
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zone ;
typedef TYPE_1__* uma_zone_t ;
struct TYPE_8__ {scalar_t__ td_critnest; } ;
struct TYPE_7__ {int uz_name; } ;


 int CTR2 (int ,char*,TYPE_5__*,int ) ;
 int KASSERT (int,char*) ;
 int KTR_UMA ;
 int RANDOM_UMA ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int SKIP_NONE ;
 TYPE_5__* curthread ;
 int random_harvest_fast_uma (TYPE_1__**,int,int ) ;
 int zone_free_item (TYPE_1__*,void*,void*,int ) ;

void
uma_zfree_domain(uma_zone_t zone, void *item, void *udata)
{


 random_harvest_fast_uma(&zone, sizeof(zone), RANDOM_UMA);

 CTR2(KTR_UMA, "uma_zfree_domain thread %x zone %s", curthread,
     zone->uz_name);

 KASSERT(curthread->td_critnest == 0 || SCHEDULER_STOPPED(),
     ("uma_zfree_domain: called with spinlock or critical section held"));


        if (item == ((void*)0))
                return;
 zone_free_item(zone, item, udata, SKIP_NONE);
}
