
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_queue_policy_item_ {int dummy; } ;
struct cache_policy_item_ {int dummy; } ;


 int TRACE_IN (struct cache_policy_item_* (*) ()) ;
 int TRACE_OUT (struct cache_policy_item_* (*) ()) ;
 int assert (int ) ;
 struct cache_queue_policy_item_* calloc (int,int) ;

__attribute__((used)) static struct cache_policy_item_ *
cache_queue_policy_create_item(void)
{
 struct cache_queue_policy_item_ *retval;

 TRACE_IN(cache_queue_policy_create_item);
 retval = calloc(1,
  sizeof(*retval));
 assert(retval != ((void*)0));

 TRACE_OUT(cache_queue_policy_create_item);
 return ((struct cache_policy_item_ *)retval);
}
