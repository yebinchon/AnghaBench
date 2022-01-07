
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int update_item_func; } ;
struct cache_queue_policy_ {TYPE_1__ parent_data; } ;
struct cache_policy_ {int dummy; } ;


 int TRACE_IN (struct cache_policy_* (*) ()) ;
 int TRACE_OUT (struct cache_policy_* (*) ()) ;
 int cache_lru_policy_update_item ;
 struct cache_queue_policy_* init_cache_queue_policy () ;

struct cache_policy_ *
init_cache_lru_policy(void)
{
 struct cache_queue_policy_ *retval;

 TRACE_IN(init_cache_lru_policy);
 retval = init_cache_queue_policy();
 retval->parent_data.update_item_func = cache_lru_policy_update_item;

 TRACE_OUT(init_cache_lru_policy);
 return ((struct cache_policy_ *)retval);
}
