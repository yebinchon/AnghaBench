
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_read_session_read_response {int dummy; } ;
struct comm_element {scalar_t__ type; struct cache_mp_read_session_read_response c_mp_rs_read_response; } ;


 scalar_t__ CET_MP_READ_SESSION_READ_RESPONSE ;
 int TRACE_IN (struct cache_mp_read_session_read_response* (*) (struct comm_element*)) ;
 int TRACE_OUT (struct cache_mp_read_session_read_response* (*) (struct comm_element*)) ;
 int assert (int) ;

struct cache_mp_read_session_read_response *
get_cache_mp_read_session_read_response(struct comm_element *element)
{

 TRACE_IN(get_cache_mp_read_session_read_response);
 assert(element->type == CET_MP_READ_SESSION_READ_RESPONSE);
 TRACE_OUT(get_cache_mp_read_session_read_response);
 return (&element->c_mp_rs_read_response);
}
