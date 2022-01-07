
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pidx; size_t entry_count; int cbuf_csem; int cbuf_plock; void** array; int cbuf_psem; } ;
typedef TYPE_1__ ocs_cbuf_t ;
typedef int int32_t ;


 scalar_t__ likely (int) ;
 int ocs_lock (int *) ;
 scalar_t__ ocs_sem_p (int *,int) ;
 int ocs_sem_v (int *) ;
 int ocs_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int32_t
ocs_cbuf_put(ocs_cbuf_t *cbuf, void *elem)
{
 int32_t rc = 0;

 if (likely(ocs_sem_p(&cbuf->cbuf_psem, -1) == 0)) {
  ocs_lock(&cbuf->cbuf_plock);
   cbuf->array[cbuf->pidx] = elem;
   if (unlikely(++cbuf->pidx >= cbuf->entry_count)) {
    cbuf->pidx = 0;
   }
  ocs_unlock(&cbuf->cbuf_plock);
  ocs_sem_v(&cbuf->cbuf_csem);
 } else {
  rc = -1;
 }
 return rc;
}
