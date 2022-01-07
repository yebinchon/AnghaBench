
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_item_ {int dummy; } ;
struct cache_queue_policy_ {int head; } ;
struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct cache_queue_policy_item_*,int ) ;
 int TAILQ_REMOVE (int *,struct cache_queue_policy_item_*,int ) ;
 int TRACE_IN (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int entries ;

__attribute__((used)) static void
cache_lru_policy_update_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{
 struct cache_queue_policy_ *queue_policy;
 struct cache_queue_policy_item_ *queue_item;

 TRACE_IN(cache_lru_policy_update_item);
 queue_policy = (struct cache_queue_policy_ *)policy;
 queue_item = (struct cache_queue_policy_item_ *)item;

 TAILQ_REMOVE(&queue_policy->head, queue_item, entries);
 TAILQ_INSERT_TAIL(&queue_policy->head, queue_item, entries);
 TRACE_OUT(cache_lru_policy_update_item);
}
