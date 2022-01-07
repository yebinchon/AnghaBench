
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int get_prev_item_func; int get_next_item_func; int get_last_item_func; int get_first_item_func; int remove_item_func; int add_item_func; int destroy_item_func; int create_item_func; } ;
struct cache_queue_policy_ {int head; TYPE_1__ parent_data; } ;


 int TAILQ_INIT (int *) ;
 int TRACE_IN (struct cache_queue_policy_* (*) ()) ;
 int TRACE_OUT (struct cache_queue_policy_* (*) ()) ;
 int assert (int ) ;
 int cache_queue_policy_add_item ;
 int cache_queue_policy_create_item ;
 int cache_queue_policy_destroy_item ;
 int cache_queue_policy_get_first_item ;
 int cache_queue_policy_get_last_item ;
 int cache_queue_policy_get_next_item ;
 int cache_queue_policy_get_prev_item ;
 int cache_queue_policy_remove_item ;
 struct cache_queue_policy_* calloc (int,int) ;

__attribute__((used)) static struct cache_queue_policy_ *
init_cache_queue_policy(void)
{
 struct cache_queue_policy_ *retval;

 TRACE_IN(init_cache_queue_policy);
 retval = calloc(1,
  sizeof(*retval));
 assert(retval != ((void*)0));

 retval->parent_data.create_item_func = cache_queue_policy_create_item;
 retval->parent_data.destroy_item_func = cache_queue_policy_destroy_item;

 retval->parent_data.add_item_func = cache_queue_policy_add_item;
 retval->parent_data.remove_item_func = cache_queue_policy_remove_item;

 retval->parent_data.get_first_item_func =
  cache_queue_policy_get_first_item;
 retval->parent_data.get_last_item_func =
  cache_queue_policy_get_last_item;
 retval->parent_data.get_next_item_func =
  cache_queue_policy_get_next_item;
 retval->parent_data.get_prev_item_func =
  cache_queue_policy_get_prev_item;

 TAILQ_INIT(&retval->head);
 TRACE_OUT(init_cache_queue_policy);
 return (retval);
}
