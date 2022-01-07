
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* write_func ) (struct query_state*,int *,int) ;int kevent_watermark; int process_func; int kevent_filter; int response; int request; } ;
struct cache_write_response {int error_code; } ;
typedef int ssize_t ;


 int EVFILT_READ ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int finalize_comm_element (int *) ;
 struct cache_write_response* get_cache_write_response (int *) ;
 int on_rw_mapper ;
 int stub1 (struct query_state*,int *,int) ;

__attribute__((used)) static int
on_write_response_write1(struct query_state *qstate)
{
 struct cache_write_response *write_response;
 ssize_t result;

 TRACE_IN(on_write_response_write1);
 write_response = get_cache_write_response(&qstate->response);
 result = qstate->write_func(qstate, &write_response->error_code,
  sizeof(int));
 if (result != sizeof(int)) {
  TRACE_OUT(on_write_response_write1);
  return (-1);
 }

 finalize_comm_element(&qstate->request);
 finalize_comm_element(&qstate->response);

 qstate->kevent_watermark = sizeof(int);
 qstate->kevent_filter = EVFILT_READ;
 qstate->process_func = on_rw_mapper;

 TRACE_OUT(on_write_response_write1);
 return (0);
}
