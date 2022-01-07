
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;
struct TYPE_5__ {scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {TYPE_2__ creation_time; TYPE_1__ last_request_time; scalar_t__ request_count; } ;
struct cache_lfu_policy_item_ {size_t frequency; TYPE_3__ parent_data; } ;
struct cache_lfu_policy_ {int * groups; } ;


 double CACHELIB_MAX_FREQUENCY ;
 int TAILQ_INSERT_HEAD (int *,struct cache_lfu_policy_item_*,int ) ;
 int TAILQ_REMOVE (int *,struct cache_lfu_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int entries ;

__attribute__((used)) static void
cache_lfu_policy_update_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{
 struct cache_lfu_policy_ *lfu_policy;
 struct cache_lfu_policy_item_ *lfu_item;
 int index;

 TRACE_IN(cache_lfu_policy_update_item);
 lfu_policy = (struct cache_lfu_policy_ *)policy;
 lfu_item = (struct cache_lfu_policy_item_ *)item;
 if (lfu_item->parent_data.last_request_time.tv_sec !=
  lfu_item->parent_data.creation_time.tv_sec) {
  index = ((double)lfu_item->parent_data.request_count *
   (double)lfu_item->parent_data.request_count /
   (lfu_item->parent_data.last_request_time.tv_sec -
       lfu_item->parent_data.creation_time.tv_sec + 1)) *
       CACHELIB_MAX_FREQUENCY;
  if (index >= CACHELIB_MAX_FREQUENCY)
   index = CACHELIB_MAX_FREQUENCY - 1;
 } else
  index = CACHELIB_MAX_FREQUENCY - 1;

 TAILQ_REMOVE(&(lfu_policy->groups[lfu_item->frequency]), lfu_item,
  entries);
 lfu_item->frequency = index;
 TAILQ_INSERT_HEAD(&(lfu_policy->groups[index]), lfu_item, entries);

 TRACE_OUT(cache_lfu_policy_update_item);
}
