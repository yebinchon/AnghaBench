
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_policy_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*)) ;
 int destroy_cache_queue_policy (struct cache_queue_policy_*) ;

void
destroy_cache_fifo_policy(struct cache_policy_ *policy)
{
 struct cache_queue_policy_ *queue_policy;

 TRACE_IN(destroy_cache_fifo_policy);
 queue_policy = (struct cache_queue_policy_ *)policy;
 destroy_cache_queue_policy(queue_policy);
 TRACE_OUT(destroy_cache_fifo_policy);
}
