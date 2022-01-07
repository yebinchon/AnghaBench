
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int * process_func; scalar_t__ kevent_watermark; scalar_t__ mdata; int config_entry; } ;
typedef int cache_mp_write_session ;


 int CELT_MULTIPART ;
 scalar_t__ INVALID_CACHE_MP_WRITE_SESSION ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int close_cache_mp_write_session (int ) ;
 int configuration_lock_entry (int ,int ) ;
 int configuration_unlock_entry (int ,int ) ;

__attribute__((used)) static int
on_mp_write_session_close_notification(struct query_state *qstate)
{
 TRACE_IN(on_mp_write_session_close_notification);
 configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);
 close_cache_mp_write_session((cache_mp_write_session)qstate->mdata);
 configuration_unlock_entry(qstate->config_entry, CELT_MULTIPART);
 qstate->mdata = INVALID_CACHE_MP_WRITE_SESSION;

 qstate->kevent_watermark = 0;
 qstate->process_func = ((void*)0);
 TRACE_OUT(on_mp_write_session_close_notification);
 return (0);
}
