
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_1__* uma_keg_t ;
struct TYPE_8__ {int uz_flags; int uz_lock; int * uz_lockptr; int uz_fails; int uz_frees; int uz_allocs; struct TYPE_8__* uz_keg; } ;


 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_WAITOK ;
 int SKIP_NONE ;
 int UMA_ZFLAG_CACHE ;
 int UMA_ZFLAG_INTERNAL ;
 int UMA_ZONE_SECONDARY ;
 int ZONE_LOCK_FINI (TYPE_1__*) ;
 int cache_drain (TYPE_1__*) ;
 int counter_u64_free (int ) ;
 int kegs ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int uk_link ;
 int uma_rwlock ;
 int uz_link ;
 int zone_free_item (int ,TYPE_1__*,int *,int ) ;
 int zone_reclaim (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
zone_dtor(void *arg, int size, void *udata)
{
 uma_zone_t zone;
 uma_keg_t keg;

 zone = (uma_zone_t)arg;

 if (!(zone->uz_flags & UMA_ZFLAG_INTERNAL))
  cache_drain(zone);

 rw_wlock(&uma_rwlock);
 LIST_REMOVE(zone, uz_link);
 rw_wunlock(&uma_rwlock);






 zone_reclaim(zone, M_WAITOK, 1);



 if ((zone->uz_flags & (UMA_ZONE_SECONDARY | UMA_ZFLAG_CACHE)) == 0) {
  keg = zone->uz_keg;
  rw_wlock(&uma_rwlock);
  LIST_REMOVE(keg, uk_link);
  rw_wunlock(&uma_rwlock);
  zone_free_item(kegs, keg, ((void*)0), SKIP_NONE);
 }
 counter_u64_free(zone->uz_allocs);
 counter_u64_free(zone->uz_frees);
 counter_u64_free(zone->uz_fails);
 if (zone->uz_lockptr == &zone->uz_lock)
  ZONE_LOCK_FINI(zone);
}
