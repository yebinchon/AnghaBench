
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_item_ {int dummy; } ;
struct cache_queue_policy_ {int head; } ;
struct cache_policy_item_ {int dummy; } ;


 int TAILQ_EMPTY (int *) ;
 struct cache_queue_policy_item_* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cache_queue_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_queue_policy_*)) ;
 int TRACE_OUT (void (*) (struct cache_queue_policy_*)) ;
 int cache_queue_policy_destroy_item (struct cache_policy_item_*) ;
 int entries ;
 int free (struct cache_queue_policy_*) ;

__attribute__((used)) static void
destroy_cache_queue_policy(struct cache_queue_policy_ *queue_policy)
{
 struct cache_queue_policy_item_ *queue_item;

 TRACE_IN(destroy_cache_queue_policy);
 while (!TAILQ_EMPTY(&queue_policy->head)) {
  queue_item = TAILQ_FIRST(&queue_policy->head);
  TAILQ_REMOVE(&queue_policy->head, queue_item, entries);
  cache_queue_policy_destroy_item(
   (struct cache_policy_item_ *)queue_item);
 }
 free(queue_policy);
 TRACE_OUT(destroy_cache_queue_policy);
}
