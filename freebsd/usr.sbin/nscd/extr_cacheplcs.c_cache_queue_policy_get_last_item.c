
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_ {int head; } ;
struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;


 scalar_t__ TAILQ_LAST (int *,int ) ;
 int TRACE_IN (struct cache_policy_item_* (*) (struct cache_policy_*)) ;
 int TRACE_OUT (struct cache_policy_item_* (*) (struct cache_policy_*)) ;
 int cache_queue_policy_head_ ;

__attribute__((used)) static struct cache_policy_item_ *
cache_queue_policy_get_last_item(struct cache_policy_ *policy)
{
 struct cache_queue_policy_ *queue_policy;

 TRACE_IN(cache_queue_policy_get_last_item);
 queue_policy = (struct cache_queue_policy_ *)policy;
 TRACE_OUT(cache_queue_policy_get_last_item);
 return ((struct cache_policy_item_ *)TAILQ_LAST(&queue_policy->head,
  cache_queue_policy_head_));
}
