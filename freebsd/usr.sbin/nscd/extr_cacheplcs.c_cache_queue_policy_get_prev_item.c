
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_item_ {int dummy; } ;
struct cache_queue_policy_ {int dummy; } ;
struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;


 scalar_t__ TAILQ_PREV (struct cache_queue_policy_item_*,int ,int ) ;
 int TRACE_IN (struct cache_policy_item_* (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (struct cache_policy_item_* (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int cache_queue_policy_head_ ;
 int entries ;

__attribute__((used)) static struct cache_policy_item_ *
cache_queue_policy_get_prev_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{
 struct cache_queue_policy_ *queue_policy;
 struct cache_queue_policy_item_ *queue_item;

 TRACE_IN(cache_queue_policy_get_prev_item);
 queue_policy = (struct cache_queue_policy_ *)policy;
 queue_item = (struct cache_queue_policy_item_ *)item;

 TRACE_OUT(cache_queue_policy_get_prev_item);
 return ((struct cache_policy_item_ *)TAILQ_PREV(queue_item,
  cache_queue_policy_head_, entries));
}
