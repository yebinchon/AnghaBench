
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* write_func ) (struct query_state*,scalar_t__*,int) ;int kevent_watermark; int * process_func; int kevent_filter; int response; } ;
struct cache_mp_read_session_response {scalar_t__ error_code; } ;
typedef int ssize_t ;


 int EVFILT_READ ;
 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 struct cache_mp_read_session_response* get_cache_mp_read_session_response (int *) ;
 int * on_mp_read_session_mapper ;
 int stub1 (struct query_state*,scalar_t__*,int) ;

__attribute__((used)) static int
on_mp_read_session_response_write1(struct query_state *qstate)
{
 struct cache_mp_read_session_response *c_mp_rs_response;
 ssize_t result;

 TRACE_IN(on_mp_read_session_response_write1);
 c_mp_rs_response = get_cache_mp_read_session_response(
  &qstate->response);
 result = qstate->write_func(qstate, &c_mp_rs_response->error_code,
  sizeof(int));

 if (result != sizeof(int)) {
  LOG_ERR_3("on_mp_read_session_response_write1",
   "write failed");
  TRACE_OUT(on_mp_read_session_response_write1);
  return (-1);
 }

 if (c_mp_rs_response->error_code == 0) {
  qstate->kevent_watermark = sizeof(int);
  qstate->process_func = on_mp_read_session_mapper;
  qstate->kevent_filter = EVFILT_READ;
 } else {
  qstate->kevent_watermark = 0;
  qstate->process_func = ((void*)0);
 }
 TRACE_OUT(on_mp_read_session_response_write1);
 return (0);
}
