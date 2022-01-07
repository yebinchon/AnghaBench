
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* read_func ) (struct query_state*,int *,int) ;int process_func; int kevent_watermark; int request; } ;
struct cache_mp_write_session_write_request {int data_size; int * data; } ;
typedef int ssize_t ;


 scalar_t__ BUFSIZE_INVALID (int ) ;
 int CET_MP_WRITE_SESSION_WRITE_REQUEST ;
 int LOG_ERR_3 (char*,char*) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int assert (int ) ;
 int * calloc (int,int ) ;
 struct cache_mp_write_session_write_request* get_cache_mp_write_session_write_request (int *) ;
 int init_comm_element (int *,int ) ;
 int on_mp_write_session_write_request_read2 ;
 int stub1 (struct query_state*,int *,int) ;

__attribute__((used)) static int
on_mp_write_session_write_request_read1(struct query_state *qstate)
{
 struct cache_mp_write_session_write_request *write_request;
 ssize_t result;

 TRACE_IN(on_mp_write_session_write_request_read1);
 init_comm_element(&qstate->request,
  CET_MP_WRITE_SESSION_WRITE_REQUEST);
 write_request = get_cache_mp_write_session_write_request(
  &qstate->request);

 result = qstate->read_func(qstate, &write_request->data_size,
  sizeof(size_t));

 if (result != sizeof(size_t)) {
  LOG_ERR_3("on_mp_write_session_write_request_read1",
   "read failed");
  TRACE_OUT(on_mp_write_session_write_request_read1);
  return (-1);
 }

 if (BUFSIZE_INVALID(write_request->data_size)) {
  LOG_ERR_3("on_mp_write_session_write_request_read1",
   "invalid data_size value");
  TRACE_OUT(on_mp_write_session_write_request_read1);
  return (-1);
 }

 write_request->data = calloc(1, write_request->data_size);
 assert(write_request->data != ((void*)0));

 qstate->kevent_watermark = write_request->data_size;
 qstate->process_func = on_mp_write_session_write_request_read2;
 TRACE_OUT(on_mp_write_session_write_request_read1);
 return (0);
}
