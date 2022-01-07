
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* write_func ) (struct query_state*,int *,int) ;int * process_func; scalar_t__ kevent_watermark; int response; int request; } ;
struct cache_transform_response {int error_code; } ;
typedef int ssize_t ;


 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int finalize_comm_element (int *) ;
 struct cache_transform_response* get_cache_transform_response (int *) ;
 int stub1 (struct query_state*,int *,int) ;

__attribute__((used)) static int
on_transform_response_write1(struct query_state *qstate)
{
 struct cache_transform_response *transform_response;
 ssize_t result;

 TRACE_IN(on_transform_response_write1);
 transform_response = get_cache_transform_response(&qstate->response);
 result = qstate->write_func(qstate, &transform_response->error_code,
  sizeof(int));
 if (result != sizeof(int)) {
  TRACE_OUT(on_transform_response_write1);
  return (-1);
 }

 finalize_comm_element(&qstate->request);
 finalize_comm_element(&qstate->response);

 qstate->kevent_watermark = 0;
 qstate->process_func = ((void*)0);
 TRACE_OUT(on_transform_response_write1);
 return (0);
}
