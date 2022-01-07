
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_bucket_t ;
struct TYPE_9__ {int ub_cnt; int * ub_bucket; } ;
struct TYPE_8__ {scalar_t__ uz_max_items; scalar_t__ uz_items; scalar_t__ uz_sleepers; int uz_arg; int (* uz_release ) (int ,int *,int) ;int uz_size; int (* uz_fini ) (int ,int ) ;} ;


 int ZONE_LOCK (TYPE_1__*) ;
 int ZONE_UNLOCK (TYPE_1__*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int *,int) ;
 int wakeup_one (TYPE_1__*) ;

__attribute__((used)) static void
bucket_drain(uma_zone_t zone, uma_bucket_t bucket)
{
 int i;

 if (bucket == ((void*)0))
  return;

 if (zone->uz_fini)
  for (i = 0; i < bucket->ub_cnt; i++)
   zone->uz_fini(bucket->ub_bucket[i], zone->uz_size);
 zone->uz_release(zone->uz_arg, bucket->ub_bucket, bucket->ub_cnt);
 if (zone->uz_max_items > 0) {
  ZONE_LOCK(zone);
  zone->uz_items -= bucket->ub_cnt;
  if (zone->uz_sleepers && zone->uz_items < zone->uz_max_items)
   wakeup_one(zone);
  ZONE_UNLOCK(zone);
 }
 bucket->ub_cnt = 0;
}
