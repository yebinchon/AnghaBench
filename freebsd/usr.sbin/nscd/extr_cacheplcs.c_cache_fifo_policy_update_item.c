
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_policy_item_ {int dummy; } ;
struct cache_policy_ {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_*,struct cache_policy_item_*)) ;

__attribute__((used)) static void
cache_fifo_policy_update_item(struct cache_policy_ *policy,
 struct cache_policy_item_ *item)
{

 TRACE_IN(cache_fifo_policy_update_item);

 TRACE_OUT(cache_fifo_policy_update_item);
}
