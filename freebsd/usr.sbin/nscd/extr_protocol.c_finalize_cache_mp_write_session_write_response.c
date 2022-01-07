
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_write_session_write_response {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_mp_write_session_write_response*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_write_session_write_response*)) ;

void
finalize_cache_mp_write_session_write_response(
 struct cache_mp_write_session_write_response *mp_ws_write_response)
{

 TRACE_IN(finalize_cache_mp_write_session_write_response);
 TRACE_OUT(finalize_cache_mp_write_session_write_response);
}
