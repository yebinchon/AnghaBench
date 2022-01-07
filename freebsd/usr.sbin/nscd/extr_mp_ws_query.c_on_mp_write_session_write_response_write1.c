
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* write_func ) (struct query_state*,scalar_t__*,int) ;int kevent_watermark; scalar_t__ process_func; int kevent_filter; int response; int request; } ;
struct cache_mp_write_session_write_response {scalar_t__ error_code; } ;
typedef int ssize_t ;


 int EVFILT_READ ;
 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int finalize_comm_element (int *) ;
 struct cache_mp_write_session_write_response* get_cache_mp_write_session_write_response (int *) ;
 scalar_t__ on_mp_write_session_mapper ;
 int stub1 (struct query_state*,scalar_t__*,int) ;

__attribute__((used)) static int
on_mp_write_session_write_response_write1(struct query_state *qstate)
{
 struct cache_mp_write_session_write_response *write_response;
 ssize_t result;

 TRACE_IN(on_mp_write_session_write_response_write1);
 write_response = get_cache_mp_write_session_write_response(
  &qstate->response);
 result = qstate->write_func(qstate, &write_response->error_code,
  sizeof(int));
 if (result != sizeof(int)) {
  LOG_ERR_3("on_mp_write_session_write_response_write1",
   "write failed");
  TRACE_OUT(on_mp_write_session_write_response_write1);
  return (-1);
 }

 if (write_response->error_code == 0) {
  finalize_comm_element(&qstate->request);
  finalize_comm_element(&qstate->response);

  qstate->kevent_watermark = sizeof(int);
  qstate->process_func = on_mp_write_session_mapper;
  qstate->kevent_filter = EVFILT_READ;
 } else {
  qstate->kevent_watermark = 0;
  qstate->process_func = 0;
 }

 TRACE_OUT(on_mp_write_session_write_response_write1);
 return (0);
}
