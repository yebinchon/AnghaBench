
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int process_func; int request; } ;
struct cache_mp_read_session_request {int entry_length; int * entry; } ;
typedef int ssize_t ;


 scalar_t__ BUFSIZE_INVALID (int) ;
 int CET_MP_READ_SESSION_REQUEST ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int assert (int ) ;
 int * calloc (int,int) ;
 struct cache_mp_read_session_request* get_cache_mp_read_session_request (int *) ;
 int init_comm_element (int *,int ) ;
 int on_mp_read_session_request_read2 ;
 int stub1 (struct query_state*,int*,int) ;

int
on_mp_read_session_request_read1(struct query_state *qstate)
{
 struct cache_mp_read_session_request *c_mp_rs_request;
 ssize_t result;

 TRACE_IN(on_mp_read_session_request_read1);
 if (qstate->kevent_watermark == 0)
  qstate->kevent_watermark = sizeof(size_t);
 else {
  init_comm_element(&qstate->request,
       CET_MP_READ_SESSION_REQUEST);
  c_mp_rs_request = get_cache_mp_read_session_request(
       &qstate->request);

  result = qstate->read_func(qstate,
       &c_mp_rs_request->entry_length, sizeof(size_t));

  if (result != sizeof(size_t)) {
   TRACE_OUT(on_mp_read_session_request_read1);
   return (-1);
  }

  if (BUFSIZE_INVALID(c_mp_rs_request->entry_length)) {
   TRACE_OUT(on_mp_read_session_request_read1);
   return (-1);
  }

  c_mp_rs_request->entry = calloc(1,
   c_mp_rs_request->entry_length + 1);
  assert(c_mp_rs_request->entry != ((void*)0));

  qstate->kevent_watermark = c_mp_rs_request->entry_length;
  qstate->process_func = on_mp_read_session_request_read2;
 }
 TRACE_OUT(on_mp_read_session_request_read1);
 return (0);
}
