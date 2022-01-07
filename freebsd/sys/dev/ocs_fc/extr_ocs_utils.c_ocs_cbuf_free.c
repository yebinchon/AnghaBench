
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry_count; int os; int cbuf_plock; int cbuf_clock; struct TYPE_4__* array; } ;
typedef TYPE_1__ ocs_cbuf_t ;


 int ocs_free (int ,TYPE_1__*,int) ;
 int ocs_lock_free (int *) ;

void
ocs_cbuf_free(ocs_cbuf_t *cbuf)
{
 if (cbuf != ((void*)0)) {
  if (cbuf->array != ((void*)0)) {
   ocs_free(cbuf->os, cbuf->array, sizeof(*cbuf->array) * cbuf->entry_count);
  }
  ocs_lock_free(&cbuf->cbuf_clock);
  ocs_lock_free(&cbuf->cbuf_plock);
  ocs_free(cbuf->os, cbuf, sizeof(*cbuf));
 }
}
