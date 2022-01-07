
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct query_state {int kevent_watermark; int kevent_filter; int process_func; TYPE_4__* config_entry; int timeout; int destroy_func; scalar_t__ mdata; int eid_str; int request; int response; } ;
struct multipart_agent {int (* mp_lookup_func ) (char**,size_t*,void*) ;void* (* mp_init_func ) () ;} ;
struct cache_mp_read_session_response {int error_code; } ;
struct cache_mp_read_session_request {int entry; } ;
struct agent {scalar_t__ type; } ;
typedef int * cache_mp_write_session ;
typedef scalar_t__ cache_mp_read_session ;
typedef scalar_t__ cache_entry ;
struct TYPE_9__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct TYPE_10__ {scalar_t__ enabled; scalar_t__ perform_actual_lookups; TYPE_3__ mp_query_timeout; TYPE_2__ mp_cache_params; } ;


 int CELT_MULTIPART ;
 int CET_MP_READ_SESSION_RESPONSE ;
 int EACCES ;
 int ENOENT ;
 int EPERM ;
 int EVFILT_WRITE ;
 scalar_t__ INVALID_CACHE ;
 scalar_t__ INVALID_CACHE_ENTRY ;
 scalar_t__ INVALID_CACHE_MP_READ_SESSION ;
 int LOG_ERR_2 (char*,char*,int ) ;
 scalar_t__ MULTIPART_AGENT ;
 int NS_TERMINATE ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int abandon_cache_mp_write_session (int *) ;
 int asprintf (char**,char*,int ,int ) ;
 int assert (int ) ;
 scalar_t__ cache_mp_write (int *,char*,size_t) ;
 scalar_t__ check_query_eids (struct query_state*) ;
 int close_cache_mp_write_session (int *) ;
 TYPE_4__* configuration_find_entry (int ,int ) ;
 int configuration_lock_entry (TYPE_4__*,int ) ;
 int configuration_lock_rdlock (int ) ;
 int configuration_unlock (int ) ;
 int configuration_unlock_entry (TYPE_4__*,int ) ;
 struct agent* find_agent (int ,int ,scalar_t__) ;
 scalar_t__ find_cache_entry (int ,char*) ;
 int free (char*) ;
 struct cache_mp_read_session_request* get_cache_mp_read_session_request (int *) ;
 struct cache_mp_read_session_response* get_cache_mp_read_session_response (int *) ;
 int init_comm_element (int *,int ) ;
 int memcpy (int *,TYPE_3__*,int) ;
 int on_mp_read_session_destroy ;
 int on_mp_read_session_response_write1 ;
 scalar_t__ open_cache_mp_read_session (scalar_t__) ;
 int * open_cache_mp_write_session (scalar_t__) ;
 scalar_t__ register_new_mp_cache_entry (struct query_state*,char*) ;
 int s_agent_table ;
 int s_cache ;
 int s_configuration ;
 char* strdup (int ) ;
 void* stub1 () ;
 int stub2 (char**,size_t*,void*) ;

__attribute__((used)) static int
on_mp_read_session_request_process(struct query_state *qstate)
{
 struct cache_mp_read_session_request *c_mp_rs_request;
 struct cache_mp_read_session_response *c_mp_rs_response;
 cache_mp_read_session rs;
 cache_entry c_entry;
 char *dec_cache_entry_name;

 char *buffer;
 size_t buffer_size;
 cache_mp_write_session ws;
 struct agent *lookup_agent;
 struct multipart_agent *mp_agent;
 void *mdata;
 int res;

 TRACE_IN(on_mp_read_session_request_process);
 init_comm_element(&qstate->response, CET_MP_READ_SESSION_RESPONSE);
 c_mp_rs_response = get_cache_mp_read_session_response(
  &qstate->response);
 c_mp_rs_request = get_cache_mp_read_session_request(&qstate->request);

 qstate->config_entry = configuration_find_entry(
  s_configuration, c_mp_rs_request->entry);
 if (qstate->config_entry == ((void*)0)) {
  c_mp_rs_response->error_code = ENOENT;

  LOG_ERR_2("read_session_request",
   "can't find configuration entry '%s'."
   " aborting request", c_mp_rs_request->entry);
  goto fin;
 }

 if (qstate->config_entry->enabled == 0) {
  c_mp_rs_response->error_code = EACCES;

  LOG_ERR_2("read_session_request",
   "configuration entry '%s' is disabled",
   c_mp_rs_request->entry);
  goto fin;
 }

 if (qstate->config_entry->perform_actual_lookups != 0)
  dec_cache_entry_name = strdup(
   qstate->config_entry->mp_cache_params.cep.entry_name);
 else {







  asprintf(&dec_cache_entry_name, "%s%s", qstate->eid_str,
   qstate->config_entry->mp_cache_params.cep.entry_name);
 }

 assert(dec_cache_entry_name != ((void*)0));

 configuration_lock_rdlock(s_configuration);
 c_entry = find_cache_entry(s_cache, dec_cache_entry_name);
 configuration_unlock(s_configuration);

 if ((c_entry == INVALID_CACHE) &&
    (qstate->config_entry->perform_actual_lookups != 0))
  c_entry = register_new_mp_cache_entry(qstate,
   dec_cache_entry_name);

 free(dec_cache_entry_name);

 if (c_entry != INVALID_CACHE_ENTRY) {
  configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);
  rs = open_cache_mp_read_session(c_entry);
  configuration_unlock_entry(qstate->config_entry,
   CELT_MULTIPART);

  if ((rs == INVALID_CACHE_MP_READ_SESSION) &&
     (qstate->config_entry->perform_actual_lookups != 0)) {
   lookup_agent = find_agent(s_agent_table,
    c_mp_rs_request->entry, MULTIPART_AGENT);

   if ((lookup_agent != ((void*)0)) &&
   (lookup_agent->type == MULTIPART_AGENT)) {
    mp_agent = (struct multipart_agent *)
     lookup_agent;
    mdata = mp_agent->mp_init_func();





    configuration_lock_entry(qstate->config_entry,
     CELT_MULTIPART);
    ws = open_cache_mp_write_session(c_entry);
    configuration_unlock_entry(qstate->config_entry,
     CELT_MULTIPART);
    if (ws != ((void*)0)) {
        do {
     buffer = ((void*)0);
     res = mp_agent->mp_lookup_func(&buffer,
      &buffer_size,
      mdata);

     if ((res & NS_TERMINATE) &&
        (buffer != ((void*)0))) {
      configuration_lock_entry(
       qstate->config_entry,
          CELT_MULTIPART);
      if (cache_mp_write(ws, buffer,
          buffer_size) != 0) {
       abandon_cache_mp_write_session(ws);
       ws = ((void*)0);
      }
      configuration_unlock_entry(
       qstate->config_entry,
       CELT_MULTIPART);

      free(buffer);
      buffer = ((void*)0);
     } else {
      configuration_lock_entry(
       qstate->config_entry,
       CELT_MULTIPART);
      close_cache_mp_write_session(ws);
      configuration_unlock_entry(
       qstate->config_entry,
       CELT_MULTIPART);

      free(buffer);
      buffer = ((void*)0);
     }
        } while ((res & NS_TERMINATE) &&
             (ws != ((void*)0)));
    }

    configuration_lock_entry(qstate->config_entry,
     CELT_MULTIPART);
    rs = open_cache_mp_read_session(c_entry);
    configuration_unlock_entry(qstate->config_entry,
     CELT_MULTIPART);
   }
  }

  if (rs == INVALID_CACHE_MP_READ_SESSION)
   c_mp_rs_response->error_code = -1;
  else {
      qstate->mdata = rs;
      qstate->destroy_func = on_mp_read_session_destroy;

      configuration_lock_entry(qstate->config_entry,
   CELT_MULTIPART);
      if ((qstate->config_entry->mp_query_timeout.tv_sec != 0) ||
      (qstate->config_entry->mp_query_timeout.tv_usec != 0))
   memcpy(&qstate->timeout,
       &qstate->config_entry->mp_query_timeout,
       sizeof(struct timeval));
      configuration_unlock_entry(qstate->config_entry,
   CELT_MULTIPART);
  }
 } else
  c_mp_rs_response->error_code = -1;

fin:
 qstate->process_func = on_mp_read_session_response_write1;
 qstate->kevent_watermark = sizeof(int);
 qstate->kevent_filter = EVFILT_WRITE;

 TRACE_OUT(on_mp_read_session_request_process);
 return (0);
}
