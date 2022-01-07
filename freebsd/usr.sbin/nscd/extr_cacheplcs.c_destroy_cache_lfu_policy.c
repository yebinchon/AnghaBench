
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
 int TAILQ_REMOVE (int *,struct cache_lfu_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_policy_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*)) ;
 int cache_lfu_policy_destroy_item (struct cache_policy_item_*) ;
 int entries ;
 int free (struct cache_policy_*) ;

void
destroy_cache_lfu_policy(struct cache_policy_ *policy)
{
 int i;
 struct cache_lfu_policy_ *lfu_policy;
 struct cache_lfu_policy_item_ *lfu_item;

 TRACE_IN(destroy_cache_lfu_policy);
 lfu_policy = (struct cache_lfu_policy_ *)policy;
 for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i) {
  while (!TAILQ_EMPTY(&(lfu_policy->groups[i]))) {
   lfu_item = TAILQ_FIRST(&(lfu_policy->groups[i]));
   TAILQ_REMOVE(&(lfu_policy->groups[i]), lfu_item,
    entries);
   cache_lfu_policy_destroy_item(
    (struct cache_policy_item_ *)lfu_item);
  }
 }
 free(policy);
 TRACE_OUT(destroy_cache_lfu_policy);
}
