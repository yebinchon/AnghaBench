
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_write_session_write_request {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_mp_write_session_write_request c_mp_ws_write_request; } ;


 scalar_t__ CET_MP_WRITE_SESSION_WRITE_REQUEST ;
 int TRACE_IN (struct cache_mp_write_session_write_request* (*) (struct comm_element*)) ;
 int TRACE_OUT (struct cache_mp_write_session_write_request* (*) (struct comm_element*)) ;
 int assert (int) ;

struct cache_mp_write_session_write_request *
get_cache_mp_write_session_write_request(struct comm_element *element)
{

 TRACE_IN(get_cache_mp_write_session_write_request);
 assert(element->type == CET_MP_WRITE_SESSION_WRITE_REQUEST);
 TRACE_OUT(get_cache_mp_write_session_write_request);
 return (&element->c_mp_ws_write_request);
}
