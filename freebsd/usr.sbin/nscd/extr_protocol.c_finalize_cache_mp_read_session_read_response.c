
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_read_session_read_response {int data; } ;


 int TRACE_IN (void (*) (struct cache_mp_read_session_read_response*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_read_session_read_response*)) ;
 int free (int ) ;

void
finalize_cache_mp_read_session_read_response(
 struct cache_mp_read_session_read_response *mp_rs_read_response)
{

 TRACE_IN(finalize_cache_mp_read_session_read_response);
 free(mp_rs_read_response->data);
 TRACE_OUT(finalize_cache_mp_read_session_read_response);
}
