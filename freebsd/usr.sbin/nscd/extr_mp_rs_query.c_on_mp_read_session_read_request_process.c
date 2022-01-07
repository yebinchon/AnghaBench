
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int kevent_watermark; int kevent_filter; int process_func; int config_entry; scalar_t__ mdata; int response; } ;
struct cache_mp_read_session_read_response {scalar_t__ error_code; int data_size; int * data; } ;
typedef int cache_mp_read_session ;


 int CELT_MULTIPART ;
 int CET_MP_READ_SESSION_READ_RESPONSE ;
 int EVFILT_WRITE ;
 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int assert (int ) ;
 void* cache_mp_read (int ,int *,int *) ;
 int configuration_lock_entry (int ,int ) ;
 int configuration_unlock_entry (int ,int ) ;
 struct cache_mp_read_session_read_response* get_cache_mp_read_session_read_response (int *) ;
 int init_comm_element (int *,int ) ;
 int * malloc (int ) ;
 int on_mp_read_session_read_response_write1 ;
 int on_mp_read_session_response_process ;

__attribute__((used)) static int
on_mp_read_session_read_request_process(struct query_state *qstate)
{
 struct cache_mp_read_session_read_response *read_response;

 TRACE_IN(on_mp_read_session_response_process);
 init_comm_element(&qstate->response, CET_MP_READ_SESSION_READ_RESPONSE);
 read_response = get_cache_mp_read_session_read_response(
  &qstate->response);

 configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);
 read_response->error_code = cache_mp_read(
  (cache_mp_read_session)qstate->mdata, ((void*)0),
  &read_response->data_size);

 if (read_response->error_code == 0) {
  read_response->data = malloc(read_response->data_size);
  assert(read_response != ((void*)0));
  read_response->error_code = cache_mp_read(
   (cache_mp_read_session)qstate->mdata,
       read_response->data,
   &read_response->data_size);
 }
 configuration_unlock_entry(qstate->config_entry, CELT_MULTIPART);

 if (read_response->error_code == 0)
  qstate->kevent_watermark = sizeof(size_t) + sizeof(int);
 else
  qstate->kevent_watermark = sizeof(int);
 qstate->process_func = on_mp_read_session_read_response_write1;
 qstate->kevent_filter = EVFILT_WRITE;

 TRACE_OUT(on_mp_read_session_response_process);
 return (0);
}
