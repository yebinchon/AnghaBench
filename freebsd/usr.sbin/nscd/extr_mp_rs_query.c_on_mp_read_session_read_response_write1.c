
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ (* write_func ) (struct query_state*,scalar_t__*,int) ;size_t kevent_watermark; int * process_func; int response; } ;
struct cache_mp_read_session_read_response {scalar_t__ error_code; size_t data_size; } ;
typedef scalar_t__ ssize_t ;


 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 struct cache_mp_read_session_read_response* get_cache_mp_read_session_read_response (int *) ;
 int * on_mp_read_session_read_response_write2 ;
 scalar_t__ stub1 (struct query_state*,scalar_t__*,int) ;
 scalar_t__ stub2 (struct query_state*,size_t*,int) ;

__attribute__((used)) static int
on_mp_read_session_read_response_write1(struct query_state *qstate)
{
 struct cache_mp_read_session_read_response *read_response;
 ssize_t result;

 TRACE_IN(on_mp_read_session_read_response_write1);
 read_response = get_cache_mp_read_session_read_response(
  &qstate->response);

 result = qstate->write_func(qstate, &read_response->error_code,
  sizeof(int));
 if (read_response->error_code == 0) {
  result += qstate->write_func(qstate, &read_response->data_size,
   sizeof(size_t));
  if (result < 0 || (size_t)result != qstate->kevent_watermark) {
   TRACE_OUT(on_mp_read_session_read_response_write1);
   LOG_ERR_3("on_mp_read_session_read_response_write1",
    "write failed");
   return (-1);
  }

  qstate->kevent_watermark = read_response->data_size;
  qstate->process_func = on_mp_read_session_read_response_write2;
 } else {
  if (result < 0 || (size_t)result != qstate->kevent_watermark) {
   LOG_ERR_3("on_mp_read_session_read_response_write1",
    "write failed");
   TRACE_OUT(on_mp_read_session_read_response_write1);
   return (-1);
  }

  qstate->kevent_watermark = 0;
  qstate->process_func = ((void*)0);
 }

 TRACE_OUT(on_mp_read_session_read_response_write1);
 return (0);
}
