
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_8__ {int uz_flags; int uz_keg; int uz_lockptr; } ;


 int M_NOWAIT ;
 int PVM ;
 int UMA_ZFLAG_CACHE ;
 int UMA_ZFLAG_RECLAIMING ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int bucket_cache_reclaim (TYPE_1__*,int) ;
 int keg_drain (int ) ;
 int msleep (TYPE_1__*,int ,int ,char*,int) ;
 int wakeup (TYPE_1__*) ;

__attribute__((used)) static void
zone_reclaim(uma_zone_t zone, int waitok, bool drain)
{







 ZONE_LOCK(zone);
 while (zone->uz_flags & UMA_ZFLAG_RECLAIMING) {
  if (waitok == M_NOWAIT)
   goto out;
  msleep(zone, zone->uz_lockptr, PVM, "zonedrain", 1);
 }
 zone->uz_flags |= UMA_ZFLAG_RECLAIMING;
 bucket_cache_reclaim(zone, drain);
 ZONE_UNLOCK(zone);






 if ((zone->uz_flags & UMA_ZFLAG_CACHE) == 0)
  keg_drain(zone->uz_keg);
 ZONE_LOCK(zone);
 zone->uz_flags &= ~UMA_ZFLAG_RECLAIMING;
 wakeup(zone);
out:
 ZONE_UNLOCK(zone);
}
