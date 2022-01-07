
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ (* read_func ) (struct query_state*,int ,int ) ;size_t kevent_watermark; int process_func; int request; } ;
struct cache_mp_write_session_write_request {int data_size; int data; } ;
typedef scalar_t__ ssize_t ;


 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 struct cache_mp_write_session_write_request* get_cache_mp_write_session_write_request (int *) ;
 int on_mp_write_session_write_request_process ;
 scalar_t__ stub1 (struct query_state*,int ,int ) ;

__attribute__((used)) static int
on_mp_write_session_write_request_read2(struct query_state *qstate)
{
 struct cache_mp_write_session_write_request *write_request;
 ssize_t result;

 TRACE_IN(on_mp_write_session_write_request_read2);
 write_request = get_cache_mp_write_session_write_request(
  &qstate->request);

 result = qstate->read_func(qstate, write_request->data,
  write_request->data_size);

 if (result < 0 || (size_t)result != qstate->kevent_watermark) {
  LOG_ERR_3("on_mp_write_session_write_request_read2",
   "read failed");
  TRACE_OUT(on_mp_write_session_write_request_read2);
  return (-1);
 }

 qstate->kevent_watermark = 0;
 qstate->process_func = on_mp_write_session_write_request_process;
 TRACE_OUT(on_mp_write_session_write_request_read2);
 return (0);
}
