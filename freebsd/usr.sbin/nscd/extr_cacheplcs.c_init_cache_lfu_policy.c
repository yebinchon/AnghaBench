
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_policy_ {int dummy; } ;
struct TYPE_2__ {int get_prev_item_func; int get_next_item_func; int get_last_item_func; int get_first_item_func; int remove_item_func; int update_item_func; int add_item_func; int destroy_item_func; int create_item_func; } ;
struct cache_lfu_policy_ {int * groups; TYPE_1__ parent_data; } ;


 int CACHELIB_MAX_FREQUENCY ;
 int TAILQ_INIT (int *) ;
 int TRACE_IN (struct cache_policy_* (*) ()) ;
 int TRACE_OUT (struct cache_policy_* (*) ()) ;
 int assert (int ) ;
 int cache_lfu_policy_add_item ;
 int cache_lfu_policy_create_item ;
 int cache_lfu_policy_destroy_item ;
 int cache_lfu_policy_get_first_item ;
 int cache_lfu_policy_get_last_item ;
 int cache_lfu_policy_get_next_item ;
 int cache_lfu_policy_get_prev_item ;
 int cache_lfu_policy_remove_item ;
 int cache_lfu_policy_update_item ;
 struct cache_lfu_policy_* calloc (int,int) ;

struct cache_policy_ *
init_cache_lfu_policy(void)
{
 int i;
 struct cache_lfu_policy_ *retval;

 TRACE_IN(init_cache_lfu_policy);
 retval = calloc(1,
  sizeof(*retval));
 assert(retval != ((void*)0));

 retval->parent_data.create_item_func = cache_lfu_policy_create_item;
 retval->parent_data.destroy_item_func = cache_lfu_policy_destroy_item;

 retval->parent_data.add_item_func = cache_lfu_policy_add_item;
 retval->parent_data.update_item_func = cache_lfu_policy_update_item;
 retval->parent_data.remove_item_func = cache_lfu_policy_remove_item;

 retval->parent_data.get_first_item_func =
  cache_lfu_policy_get_first_item;
 retval->parent_data.get_last_item_func =
  cache_lfu_policy_get_last_item;
 retval->parent_data.get_next_item_func =
  cache_lfu_policy_get_next_item;
 retval->parent_data.get_prev_item_func =
  cache_lfu_policy_get_prev_item;

 for (i = 0; i < CACHELIB_MAX_FREQUENCY; ++i)
  TAILQ_INIT(&(retval->groups[i]));

 TRACE_OUT(init_cache_lfu_policy);
 return ((struct cache_policy_ *)retval);
}
