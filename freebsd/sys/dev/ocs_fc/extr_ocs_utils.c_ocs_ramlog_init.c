
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_t ;
struct TYPE_4__ {int textbuf_count; int textbuf_base; int lock; int initialized; int * textbufs; int * cur_textbuf; scalar_t__ cur_textbuf_idx; } ;
typedef TYPE_1__ ocs_ramlog_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int TRUE ;
 int ocs_instance (int *) ;
 int ocs_lock_init (int *,int *,char*,int ) ;
 int ocs_log_err (int *,char*) ;
 void* ocs_malloc (int *,int,int) ;
 int ocs_ramlog_free (int *,TYPE_1__*) ;
 int ocs_textbuf_alloc (int *,int *,int) ;

ocs_ramlog_t *
ocs_ramlog_init(ocs_t *ocs, uint32_t buffer_len, uint32_t buffer_count)
{
 uint32_t i;
 uint32_t rc;
 ocs_ramlog_t *ramlog;

 ramlog = ocs_malloc(ocs, sizeof(*ramlog), OCS_M_ZERO | OCS_M_NOWAIT);
 if (ramlog == ((void*)0)) {
  ocs_log_err(ocs, "ocs_malloc ramlog failed\n");
  return ((void*)0);
 }

 ramlog->textbuf_count = buffer_count;

 ramlog->textbufs = ocs_malloc(ocs, sizeof(*ramlog->textbufs)*buffer_count, OCS_M_ZERO | OCS_M_NOWAIT);
 if (ramlog->textbufs == ((void*)0)) {
  ocs_log_err(ocs, "ocs_malloc textbufs failed\n");
  ocs_ramlog_free(ocs, ramlog);
  return ((void*)0);
 }

 for (i = 0; i < buffer_count; i ++) {
  rc = ocs_textbuf_alloc(ocs, &ramlog->textbufs[i], buffer_len);
  if (rc) {
   ocs_log_err(ocs, "ocs_textbuf_alloc failed\n");
   ocs_ramlog_free(ocs, ramlog);
   return ((void*)0);
  }
 }

 ramlog->cur_textbuf_idx = 0;
 ramlog->textbuf_base = 1;
 ramlog->cur_textbuf = &ramlog->textbufs[0];
 ramlog->initialized = TRUE;
 ocs_lock_init(ocs, &ramlog->lock, "ramlog_lock[%d]", ocs_instance(ocs));
 return ramlog;
}
