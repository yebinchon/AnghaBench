
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef enum zfreeskip { ____Placeholder_zfreeskip } zfreeskip ;
struct TYPE_8__ {int uz_flags; scalar_t__ uz_ctor; scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int uz_frees; int uz_arg; int (* uz_release ) (int ,void**,int) ;int uz_size; int (* uz_fini ) (void*,int ) ;int (* uz_dtor ) (void*,int ,void*) ;} ;


 int SKIP_CNT ;
 int SKIP_DTOR ;
 int SKIP_FINI ;
 int SKIP_NONE ;
 int UMA_ZONE_MALLOC ;
 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int counter_u64_add (int ,int) ;
 int stub1 (void*,int ,void*) ;
 int stub2 (void*,int ) ;
 int stub3 (int ,void**,int) ;
 scalar_t__ trash_ctor ;
 int trash_dtor (void*,int ,void*) ;
 int uma_dbg_free (TYPE_1__*,void*,void*) ;
 int uma_dbg_zskip (TYPE_1__*,void*) ;
 int wakeup_one (TYPE_1__*) ;

__attribute__((used)) static void
zone_free_item(uma_zone_t zone, void *item, void *udata, enum zfreeskip skip)
{
 if (skip < SKIP_DTOR && zone->uz_dtor != ((void*)0))

  zone->uz_dtor(item, zone->uz_size, udata);

 if (skip < SKIP_FINI && zone->uz_fini)
  zone->uz_fini(item, zone->uz_size);

 zone->uz_release(zone->uz_arg, &item, 1);

 if (skip & SKIP_CNT)
  return;

 counter_u64_add(zone->uz_frees, 1);

 if (zone->uz_max_items > 0) {
  ZONE_LOCK(zone);
  zone->uz_items--;
  if (zone->uz_sleepers > 0 &&
      zone->uz_items < zone->uz_max_items)
   wakeup_one(zone);
  ZONE_UNLOCK(zone);
 }
}
