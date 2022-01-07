
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_write_session_write_request {int data; } ;


 int TRACE_IN (void (*) (struct cache_mp_write_session_write_request*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_write_session_write_request*)) ;
 int free (int ) ;

void
finalize_cache_mp_write_session_write_request(
 struct cache_mp_write_session_write_request *mp_ws_write_request)
{

 TRACE_IN(finalize_cache_mp_write_session_write_request);
 free(mp_ws_write_request->data);
 TRACE_OUT(finalize_cache_mp_write_session_write_request);
}
