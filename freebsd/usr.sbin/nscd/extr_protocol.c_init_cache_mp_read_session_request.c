
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_read_session_request {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_mp_read_session_request*)) ;
 int TRACE_OUT (void (*) (struct cache_mp_read_session_request*)) ;
 int memset (struct cache_mp_read_session_request*,int ,int) ;

void
init_cache_mp_read_session_request(
 struct cache_mp_read_session_request *mp_rs_request)
{

 TRACE_IN(init_cache_mp_read_session_request);
 memset(mp_rs_request, 0, sizeof(struct cache_mp_read_session_request));
 TRACE_OUT(init_cache_mp_read_session_request);
}
