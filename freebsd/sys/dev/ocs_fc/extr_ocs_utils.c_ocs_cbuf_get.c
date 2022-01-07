
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cidx; size_t entry_count; int cbuf_psem; int cbuf_clock; void** array; int cbuf_csem; } ;
typedef TYPE_1__ ocs_cbuf_t ;
typedef int int32_t ;


 scalar_t__ likely (int) ;
 int ocs_lock (int *) ;
 scalar_t__ ocs_sem_p (int *,int ) ;
 int ocs_sem_v (int *) ;
 int ocs_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void*
ocs_cbuf_get(ocs_cbuf_t *cbuf, int32_t timeout_usec)
{
 void *ret = ((void*)0);

 if (likely(ocs_sem_p(&cbuf->cbuf_csem, timeout_usec) == 0)) {
  ocs_lock(&cbuf->cbuf_clock);
   ret = cbuf->array[cbuf->cidx];
   if (unlikely(++cbuf->cidx >= cbuf->entry_count)) {
    cbuf->cidx = 0;
   }
  ocs_unlock(&cbuf->cbuf_clock);
  ocs_sem_v(&cbuf->cbuf_psem);
 }
 return ret;
}
