
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_read_session_request {int entry; } ;


 int TRACE_IN (void (*) (struct cache_mp_read_session_request*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_read_session_request*)) ;
 int free (int ) ;

void
finalize_cache_mp_read_session_request(
 struct cache_mp_read_session_request *mp_rs_request)
{

 TRACE_IN(finalize_cache_mp_read_session_request);
 free(mp_rs_request->entry);
 TRACE_OUT(finalize_cache_mp_read_session_request);
}
