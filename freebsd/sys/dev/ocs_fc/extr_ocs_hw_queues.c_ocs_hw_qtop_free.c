
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alloc_count; int os; struct TYPE_4__* entries; } ;
typedef TYPE_1__ ocs_hw_qtop_t ;


 int ocs_free (int ,TYPE_1__*,int) ;

void
ocs_hw_qtop_free(ocs_hw_qtop_t *qtop)
{
 if (qtop != ((void*)0)) {
  if (qtop->entries != ((void*)0)) {
   ocs_free(qtop->os, qtop->entries, qtop->alloc_count*sizeof(*qtop->entries));
  }
  ocs_free(qtop->os, qtop, sizeof(*qtop));
 }
}
