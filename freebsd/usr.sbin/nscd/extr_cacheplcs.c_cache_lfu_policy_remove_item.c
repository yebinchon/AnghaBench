
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;
struct cache_lfu_policy_item_ {size_t frequency; } ;
struct cache_lfu_policy_ {int * groups; } ;


 int TAILQ_REMOVE (int *,struct cache_lfu_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int entries ;

__attribute__((used)) static void
cache_lfu_policy_remove_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{
 struct cache_lfu_policy_ *lfu_policy;
 struct cache_lfu_policy_item_ *lfu_item;

 TRACE_IN(cache_lfu_policy_remove_item);
 lfu_policy = (struct cache_lfu_policy_ *)policy;
 lfu_item = (struct cache_lfu_policy_item_ *)item;

 TAILQ_REMOVE(&(lfu_policy->groups[lfu_item->frequency]), lfu_item,
  entries);
 TRACE_OUT(cache_lfu_policy_remove_item);
}
