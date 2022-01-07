
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_mp_write_session_write_request {int dummy; } ;


 int TRACE_IN (void (*) (struct cache_mp_write_session_write_request*)) ;
 int TRACE_OUT (int ) ;
 int init_cache_mp_write_session_write_response ;
 int memset (struct cache_mp_write_session_write_request*,int ,int) ;

void
init_cache_mp_write_session_write_request(
 struct cache_mp_write_session_write_request *mp_ws_write_request)
{

 TRACE_IN(init_cache_mp_write_session_write_request);
 memset(mp_ws_write_request, 0,
  sizeof(struct cache_mp_write_session_write_request));
 TRACE_OUT(init_cache_mp_write_session_write_response);
}
