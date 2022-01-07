
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ (* read_func ) (struct query_state*,int ,int ) ;int process_func; scalar_t__ kevent_watermark; int request; } ;
struct cache_transform_request {int entry_length; int entry; } ;
typedef scalar_t__ ssize_t ;


 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 struct cache_transform_request* get_cache_transform_request (int *) ;
 int on_transform_request_process ;
 scalar_t__ stub1 (struct query_state*,int ,int ) ;

__attribute__((used)) static int
on_transform_request_read2(struct query_state *qstate)
{
 struct cache_transform_request *transform_request;
 ssize_t result;

 TRACE_IN(on_transform_request_read2);
 transform_request = get_cache_transform_request(&qstate->request);

 result = qstate->read_func(qstate, transform_request->entry,
  transform_request->entry_length);

 if (result != (ssize_t)qstate->kevent_watermark) {
  TRACE_OUT(on_transform_request_read2);
  return (-1);
 }

 qstate->kevent_watermark = 0;
 qstate->process_func = on_transform_request_process;

 TRACE_OUT(on_transform_request_read2);
 return (0);
}
