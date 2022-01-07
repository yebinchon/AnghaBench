
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ (* write_func ) (struct query_state*,int ,int ) ;size_t kevent_watermark; int kevent_filter; int process_func; int response; int request; } ;
struct cache_mp_read_session_read_response {int data_size; int data; } ;
typedef scalar_t__ ssize_t ;


 int EVFILT_READ ;
 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int finalize_comm_element (int *) ;
 struct cache_mp_read_session_read_response* get_cache_mp_read_session_read_response (int *) ;
 int on_mp_read_session_mapper ;
 scalar_t__ stub1 (struct query_state*,int ,int ) ;

__attribute__((used)) static int
on_mp_read_session_read_response_write2(struct query_state *qstate)
{
 struct cache_mp_read_session_read_response *read_response;
 ssize_t result;

 TRACE_IN(on_mp_read_session_read_response_write2);
 read_response = get_cache_mp_read_session_read_response(
  &qstate->response);
 result = qstate->write_func(qstate, read_response->data,
  read_response->data_size);
 if (result < 0 || (size_t)result != qstate->kevent_watermark) {
  LOG_ERR_3("on_mp_read_session_read_response_write2",
   "write failed");
  TRACE_OUT(on_mp_read_session_read_response_write2);
  return (-1);
 }

 finalize_comm_element(&qstate->request);
 finalize_comm_element(&qstate->response);

 qstate->kevent_watermark = sizeof(int);
 qstate->process_func = on_mp_read_session_mapper;
 qstate->kevent_filter = EVFILT_READ;

 TRACE_OUT(on_mp_read_session_read_response_write2);
 return (0);
}
