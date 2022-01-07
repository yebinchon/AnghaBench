
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_os_handle_t ;
struct TYPE_6__ {int entry_count; int * array; int cbuf_psem; int cbuf_csem; int cbuf_plock; int cbuf_clock; scalar_t__ cidx; scalar_t__ pidx; int os; } ;
typedef TYPE_1__ ocs_cbuf_t ;


 int OCS_M_NOWAIT ;
 int OCS_M_ZERO ;
 int ocs_cbuf_free (TYPE_1__*) ;
 int ocs_lock_init (int *,int *,char*,TYPE_1__*) ;
 void* ocs_malloc (int ,int,int) ;
 int ocs_sem_init (int *,int,char*,TYPE_1__*) ;

ocs_cbuf_t*
ocs_cbuf_alloc(ocs_os_handle_t os, uint32_t entry_count)
{
 ocs_cbuf_t *cbuf;

 cbuf = ocs_malloc(os, sizeof(*cbuf), OCS_M_NOWAIT | OCS_M_ZERO);
 if (cbuf == ((void*)0)) {
  return ((void*)0);
 }

 cbuf->os = os;
 cbuf->entry_count = entry_count;
 cbuf->pidx = 0;
 cbuf->cidx = 0;

 ocs_lock_init(((void*)0), &cbuf->cbuf_clock, "cbuf_c:%p", cbuf);
 ocs_lock_init(((void*)0), &cbuf->cbuf_plock, "cbuf_p:%p", cbuf);
 ocs_sem_init(&cbuf->cbuf_csem, 0, "cbuf:%p", cbuf);
 ocs_sem_init(&cbuf->cbuf_psem, cbuf->entry_count, "cbuf:%p", cbuf);

 cbuf->array = ocs_malloc(os, entry_count * sizeof(*cbuf->array), OCS_M_NOWAIT | OCS_M_ZERO);
 if (cbuf->array == ((void*)0)) {
  ocs_cbuf_free(cbuf);
  return ((void*)0);
 }

 return cbuf;
}
