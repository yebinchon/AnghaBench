
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int process_func; } ;
typedef int ssize_t ;




 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int on_read_request_read1 ;
 int on_write_request_read1 ;
 int stub1 (struct query_state*,int*,int) ;

__attribute__((used)) static int
on_rw_mapper(struct query_state *qstate)
{
 ssize_t result;
 int elem_type;

 TRACE_IN(on_rw_mapper);
 if (qstate->kevent_watermark == 0) {
  qstate->kevent_watermark = sizeof(int);
 } else {
  result = qstate->read_func(qstate, &elem_type, sizeof(int));
  if (result != sizeof(int)) {
   TRACE_OUT(on_rw_mapper);
   return (-1);
  }

  switch (elem_type) {
  case 128:
   qstate->kevent_watermark = sizeof(size_t);
   qstate->process_func = on_write_request_read1;
  break;
  case 129:
   qstate->kevent_watermark = sizeof(size_t);
   qstate->process_func = on_read_request_read1;
  break;
  default:
   TRACE_OUT(on_rw_mapper);
   return (-1);
  break;
  }
 }
 TRACE_OUT(on_rw_mapper);
 return (0);
}
