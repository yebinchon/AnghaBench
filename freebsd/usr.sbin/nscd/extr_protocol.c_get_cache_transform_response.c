
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_transform_response {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_transform_response c_transform_response; } ;


 scalar_t__ CET_TRANSFORM_RESPONSE ;
 int TRACE_IN (struct cache_transform_response* (*) (struct comm_element*)) ;
 int TRACE_OUT (struct cache_transform_response* (*) (struct comm_element*)) ;
 int assert (int) ;

struct cache_transform_response *
get_cache_transform_response(struct comm_element *element)
{

 TRACE_IN(get_cache_transform_response);
 assert(element->type == CET_TRANSFORM_RESPONSE);
 TRACE_OUT(get_cache_transform_response);
 return (&element->c_transform_response);
}
