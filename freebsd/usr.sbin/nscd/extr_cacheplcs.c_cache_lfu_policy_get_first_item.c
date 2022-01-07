
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;
struct cache_lfu_policy_item_ {int dummy; } ;
struct cache_lfu_policy_ {int * groups; } ;


 int CACHELIB_MAX_FREQUENCY ;
 int TAILQ_EMPTY (int *) ;
 struct cache_lfu_policy_item_* TAILQ_FIRST (int *) ;
 int TRACE_IN (struct cache_policy_item_* (*) (struct cache_policy_*)) ;
 int TRACE_OUT (struct cache_policy_item_* (*) (struct cache_policy_*)) ;

__attribute__((used)) static struct cache_policy_item_ *
cache_lfu_policy_get_first_item(struct cache_policy_ *policy)
{
 struct cache_lfu_policy_ *lfu_policy;
 struct cache_lfu_policy_item_ *lfu_item;
 int i;

 TRACE_IN(cache_lfu_policy_get_first_item);
 lfu_item = ((void*)0);
 lfu_policy = (struct cache_lfu_policy_ *)policy;
 for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i)
  if (!TAILQ_EMPTY(&(lfu_policy->groups[i]))) {
   lfu_item = TAILQ_FIRST(&(lfu_policy->groups[i]));
   break;
  }

 TRACE_OUT(cache_lfu_policy_get_first_item);
 return ((struct cache_policy_item_ *)lfu_item);
}
