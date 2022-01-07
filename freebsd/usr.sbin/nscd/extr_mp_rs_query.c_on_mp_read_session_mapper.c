
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int * process_func; } ;
typedef int ssize_t ;




 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int * on_mp_read_session_close_notification ;
 int * on_mp_read_session_read_request_process ;
 int stub1 (struct query_state*,int*,int) ;

__attribute__((used)) static int
on_mp_read_session_mapper(struct query_state *qstate)
{
 ssize_t result;
 int elem_type;

 TRACE_IN(on_mp_read_session_mapper);
 if (qstate->kevent_watermark == 0) {
  qstate->kevent_watermark = sizeof(int);
 } else {
  result = qstate->read_func(qstate, &elem_type, sizeof(int));
  if (result != sizeof(int)) {
   LOG_ERR_3("on_mp_read_session_mapper",
    "read failed");
   TRACE_OUT(on_mp_read_session_mapper);
   return (-1);
  }

  switch (elem_type) {
  case 128:
   qstate->kevent_watermark = 0;
   qstate->process_func =
    on_mp_read_session_read_request_process;
   break;
  case 129:
   qstate->kevent_watermark = 0;
   qstate->process_func =
    on_mp_read_session_close_notification;
   break;
  default:
   qstate->kevent_watermark = 0;
   qstate->process_func = ((void*)0);
   LOG_ERR_3("on_mp_read_session_mapper",
    "unknown element type");
   TRACE_OUT(on_mp_read_session_mapper);
   return (-1);
  }
 }
 TRACE_OUT(on_mp_read_session_mapper);
 return (0);
}
