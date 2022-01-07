
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_transform_request {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_transform_request c_transform_request; } ;


 scalar_t__ CET_TRANSFORM_REQUEST ;
 int TRACE_IN (struct cache_transform_request* (*) (struct comm_element*)) ;
 int TRACE_OUT (struct cache_transform_request* (*) (struct comm_element*)) ;
 int assert (int) ;

struct cache_transform_request *
get_cache_transform_request(struct comm_element *element)
{

 TRACE_IN(get_cache_transform_request);
 assert(element->type == CET_TRANSFORM_REQUEST);
 TRACE_OUT(get_cache_transform_request);
 return (&element->c_transform_request);
}
