
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;
struct cache_lfu_policy_item_ {int frequency; } ;
struct cache_lfu_policy_ {int * groups; } ;


 int CACHELIB_MAX_FREQUENCY ;
 int TAILQ_INSERT_HEAD (int *,struct cache_lfu_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int entries ;

__attribute__((used)) static void
cache_lfu_policy_add_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{
 struct cache_lfu_policy_ *lfu_policy;
 struct cache_lfu_policy_item_ *lfu_item;

 TRACE_IN(cache_lfu_policy_add_item);
 lfu_policy = (struct cache_lfu_policy_ *)policy;
 lfu_item = (struct cache_lfu_policy_item_ *)item;

 lfu_item->frequency = CACHELIB_MAX_FREQUENCY - 1;
 TAILQ_INSERT_HEAD(&(lfu_policy->groups[CACHELIB_MAX_FREQUENCY - 1]),
  lfu_item, entries);
 TRACE_OUT(cache_lfu_policy_add_item);
}
