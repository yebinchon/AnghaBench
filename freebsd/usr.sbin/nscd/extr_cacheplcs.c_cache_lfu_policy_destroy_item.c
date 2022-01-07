
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_policy_item_ {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_policy_item_*)) ;
 int TRACE_OUT (void (*) (struct cache_policy_item_*)) ;
 int assert (int ) ;
 int free (struct cache_policy_item_*) ;

__attribute__((used)) static void
cache_lfu_policy_destroy_item(struct cache_policy_item_ *item)
{

 TRACE_IN(cache_lfu_policy_destroy_item);
 assert(item != ((void*)0));
 free(item);
 TRACE_OUT(cache_lfu_policy_destroy_item);
}
