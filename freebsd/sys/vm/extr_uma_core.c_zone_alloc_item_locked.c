
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct TYPE_16__ {scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int (* uz_import ) (int ,void**,int,int,int) ;scalar_t__ (* uz_init ) (void*,int ,int) ;scalar_t__ (* uz_ctor ) (void*,int ,void*,int) ;scalar_t__ uz_dtor; int uz_name; int uz_fails; int uz_allocs; int uz_size; int uz_arg; int uz_lockptr; int uz_sleeps; } ;


 int CTR2 (int ,char*,int ,TYPE_1__*) ;
 int CTR3 (int ,char*,void*,int ,TYPE_1__*) ;
 int KTR_UMA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PVM ;
 int SKIP_CNT ;
 int SKIP_DTOR ;
 int SKIP_FINI ;
 int UMA_ANYDOMAIN ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_LOCK_ASSERT (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int counter_u64_add (int ,int) ;
 int mtx_sleep (TYPE_1__*,int ,int ,char*,int ) ;
 int stub1 (int ,void**,int,int,int) ;
 scalar_t__ stub2 (void*,int ,int) ;
 scalar_t__ stub3 (void*,int ,void*,int) ;
 scalar_t__ trash_ctor (void*,int ,void*,int) ;
 scalar_t__ trash_dtor ;
 int uma_dbg_alloc (TYPE_1__*,int *,void*) ;
 int uma_dbg_zskip (TYPE_1__*,void*) ;
 int uma_zero_item (void*,TYPE_1__*) ;
 int wakeup_one (TYPE_1__*) ;
 int zone_free_item (TYPE_1__*,void*,void*,int) ;
 int zone_log_warning (TYPE_1__*) ;
 int zone_maxaction (TYPE_1__*) ;

__attribute__((used)) static void *
zone_alloc_item_locked(uma_zone_t zone, void *udata, int domain, int flags)
{
 void *item;




 ZONE_LOCK_ASSERT(zone);

 if (zone->uz_max_items > 0) {
  if (zone->uz_items >= zone->uz_max_items) {
   zone_log_warning(zone);
   zone_maxaction(zone);
   if (flags & M_NOWAIT) {
    ZONE_UNLOCK(zone);
    return (((void*)0));
   }
   zone->uz_sleeps++;
   zone->uz_sleepers++;
   while (zone->uz_items >= zone->uz_max_items)
    mtx_sleep(zone, zone->uz_lockptr, PVM,
        "zonelimit", 0);
   zone->uz_sleepers--;
   if (zone->uz_sleepers > 0 &&
       zone->uz_items + 1 < zone->uz_max_items)
    wakeup_one(zone);
  }
  zone->uz_items++;
 }
 ZONE_UNLOCK(zone);


 if (domain != UMA_ANYDOMAIN && VM_DOMAIN_EMPTY(domain))
  domain = UMA_ANYDOMAIN;

 if (zone->uz_import(zone->uz_arg, &item, 1, domain, flags) != 1)
  goto fail;
 if (zone->uz_init != ((void*)0)) {
  if (zone->uz_init(item, zone->uz_size, flags) != 0) {
   zone_free_item(zone, item, udata, SKIP_FINI | SKIP_CNT);
   goto fail;
  }
 }
 if (zone->uz_ctor != ((void*)0) &&




     zone->uz_ctor(item, zone->uz_size, udata, flags) != 0) {
  zone_free_item(zone, item, udata, SKIP_DTOR | SKIP_CNT);
  goto fail;
 }




 if (flags & M_ZERO)
  uma_zero_item(item, zone);

 counter_u64_add(zone->uz_allocs, 1);
 CTR3(KTR_UMA, "zone_alloc_item item %p from %s(%p)", item,
     zone->uz_name, zone);

 return (item);

fail:
 if (zone->uz_max_items > 0) {
  ZONE_LOCK(zone);
  zone->uz_items--;
  ZONE_UNLOCK(zone);
 }
 counter_u64_add(zone->uz_fails, 1);
 CTR2(KTR_UMA, "zone_alloc_item failed from %s(%p)",
     zone->uz_name, zone);
 return (((void*)0));
}
