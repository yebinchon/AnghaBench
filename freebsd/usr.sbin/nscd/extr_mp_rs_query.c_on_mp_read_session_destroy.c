
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int config_entry; int * mdata; int response; int request; } ;
typedef int cache_mp_read_session ;


 int CELT_MULTIPART ;
 int TRACE_IN (void (*) (struct query_state*)) ;
 int TRACE_OUT (void (*) (struct query_state*)) ;
 int close_cache_mp_read_session (int ) ;
 int configuration_lock_entry (int ,int ) ;
 int configuration_unlock_entry (int ,int ) ;
 int finalize_comm_element (int *) ;

__attribute__((used)) static void
on_mp_read_session_destroy(struct query_state *qstate)
{
 TRACE_IN(on_mp_read_session_destroy);
 finalize_comm_element(&qstate->request);
 finalize_comm_element(&qstate->response);

 if (qstate->mdata != ((void*)0)) {
  configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);
  close_cache_mp_read_session(
       (cache_mp_read_session)qstate->mdata);
  configuration_unlock_entry(qstate->config_entry,
   CELT_MULTIPART);
 }
 TRACE_OUT(on_mp_read_session_destroy);
}
