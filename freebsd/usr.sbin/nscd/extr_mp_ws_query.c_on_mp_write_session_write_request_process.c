
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int kevent_watermark; int kevent_filter; int process_func; int config_entry; scalar_t__ mdata; int request; int response; } ;
struct cache_mp_write_session_write_response {int error_code; } ;
struct cache_mp_write_session_write_request {int data_size; int data; } ;
typedef int cache_mp_write_session ;


 int CELT_MULTIPART ;
 int CET_MP_WRITE_SESSION_WRITE_RESPONSE ;
 int EVFILT_WRITE ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int cache_mp_write (int ,int ,int ) ;
 int configuration_lock_entry (int ,int ) ;
 int configuration_unlock_entry (int ,int ) ;
 struct cache_mp_write_session_write_request* get_cache_mp_write_session_write_request (int *) ;
 struct cache_mp_write_session_write_response* get_cache_mp_write_session_write_response (int *) ;
 int init_comm_element (int *,int ) ;
 int on_mp_write_session_write_response_write1 ;

__attribute__((used)) static int
on_mp_write_session_write_request_process(struct query_state *qstate)
{
 struct cache_mp_write_session_write_request *write_request;
 struct cache_mp_write_session_write_response *write_response;

 TRACE_IN(on_mp_write_session_write_request_process);
 init_comm_element(&qstate->response,
  CET_MP_WRITE_SESSION_WRITE_RESPONSE);
 write_response = get_cache_mp_write_session_write_response(
  &qstate->response);
 write_request = get_cache_mp_write_session_write_request(
  &qstate->request);

 configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);
 write_response->error_code = cache_mp_write(
  (cache_mp_write_session)qstate->mdata,
  write_request->data,
  write_request->data_size);
 configuration_unlock_entry(qstate->config_entry, CELT_MULTIPART);

 qstate->kevent_watermark = sizeof(int);
 qstate->process_func = on_mp_write_session_write_response_write1;
 qstate->kevent_filter = EVFILT_WRITE;

 TRACE_OUT(on_mp_write_session_write_request_process);
 return (0);
}
