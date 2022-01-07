
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_read_request {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_read_request c_read_request; } ;


 scalar_t__ CET_READ_REQUEST ;
 int TRACE_IN (struct cache_read_request* (*) (struct comm_element*)) ;
 int TRACE_OUT (struct cache_read_request* (*) (struct comm_element*)) ;
 int assert (int) ;

struct cache_read_request *
get_cache_read_request(struct comm_element *element)
{

 TRACE_IN(get_cache_read_request);
 assert(element->type == CET_READ_REQUEST);
 TRACE_OUT(get_cache_read_request);
 return (&element->c_read_request);
}
