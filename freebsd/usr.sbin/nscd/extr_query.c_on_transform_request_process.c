
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int process_func; scalar_t__ kevent_watermark; struct configuration_entry* config_entry; int euid; int eid_str_length; int eid_str; int request; int response; } ;
struct configuration_entry {int perform_actual_lookups; } ;
struct cache_transform_response {int error_code; } ;
struct cache_transform_request {int transformation_type; int * entry; } ;


 int CET_TRANSFORM_RESPONSE ;
 int LOG_ERR_2 (char*,char*,int *) ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;


 int clear_config_entry (struct configuration_entry*) ;
 int clear_config_entry_part (struct configuration_entry*,int ,int ) ;
 void* configuration_find_entry (int ,int *) ;
 size_t configuration_get_entries_size (int ) ;
 struct configuration_entry* configuration_get_entry (int ,size_t) ;
 struct cache_transform_request* get_cache_transform_request (int *) ;
 struct cache_transform_response* get_cache_transform_response (int *) ;
 int init_comm_element (int *,int ) ;
 int on_transform_response_write1 ;
 int s_configuration ;

__attribute__((used)) static int
on_transform_request_process(struct query_state *qstate)
{
 struct cache_transform_request *transform_request;
 struct cache_transform_response *transform_response;
 struct configuration_entry *config_entry;
 size_t i, size;

 TRACE_IN(on_transform_request_process);
 init_comm_element(&qstate->response, CET_TRANSFORM_RESPONSE);
 transform_response = get_cache_transform_response(&qstate->response);
 transform_request = get_cache_transform_request(&qstate->request);

 switch (transform_request->transformation_type) {
 case 128:
  if (transform_request->entry == ((void*)0)) {
   size = configuration_get_entries_size(s_configuration);
   for (i = 0; i < size; ++i) {
       config_entry = configuration_get_entry(
    s_configuration, i);

       if (config_entry->perform_actual_lookups == 0)
        clear_config_entry_part(config_entry,
        qstate->eid_str, qstate->eid_str_length);
   }
  } else {
   qstate->config_entry = configuration_find_entry(
    s_configuration, transform_request->entry);

   if (qstate->config_entry == ((void*)0)) {
    LOG_ERR_2("transform_request",
     "can't find configuration"
        " entry '%s'. aborting request",
     transform_request->entry);
    transform_response->error_code = -1;
    goto fin;
   }

   if (qstate->config_entry->perform_actual_lookups != 0) {
    LOG_ERR_2("transform_request",
     "can't transform the cache entry %s"
     ", because it ised for actual lookups",
     transform_request->entry);
    transform_response->error_code = -1;
    goto fin;
   }

   clear_config_entry_part(qstate->config_entry,
    qstate->eid_str, qstate->eid_str_length);
  }
  break;
 case 129:
  if (qstate->euid != 0)
   transform_response->error_code = -1;
  else {
   if (transform_request->entry == ((void*)0)) {
    size = configuration_get_entries_size(
     s_configuration);
    for (i = 0; i < size; ++i) {
        clear_config_entry(
     configuration_get_entry(
      s_configuration, i));
    }
   } else {
    qstate->config_entry = configuration_find_entry(
     s_configuration,
     transform_request->entry);

    if (qstate->config_entry == ((void*)0)) {
     LOG_ERR_2("transform_request",
      "can't find configuration"
         " entry '%s'. aborting request",
      transform_request->entry);
     transform_response->error_code = -1;
     goto fin;
    }

    clear_config_entry(qstate->config_entry);
   }
  }
  break;
 default:
  transform_response->error_code = -1;
 }

fin:
 qstate->kevent_watermark = 0;
 qstate->process_func = on_transform_response_write1;
 TRACE_OUT(on_transform_request_process);
 return (0);
}
