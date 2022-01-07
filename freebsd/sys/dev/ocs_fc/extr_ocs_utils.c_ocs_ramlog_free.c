
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int ocs_t ;
struct TYPE_5__ {size_t textbuf_count; struct TYPE_5__* textbufs; int lock; } ;
typedef TYPE_1__ ocs_ramlog_t ;


 int ocs_free (int *,TYPE_1__*,int) ;
 int ocs_lock_free (int *) ;
 int ocs_textbuf_free (int *,TYPE_1__*) ;

void
ocs_ramlog_free(ocs_t *ocs, ocs_ramlog_t *ramlog)
{
 uint32_t i;

 if (ramlog != ((void*)0)) {
  ocs_lock_free(&ramlog->lock);
  if (ramlog->textbufs) {
   for (i = 0; i < ramlog->textbuf_count; i ++) {
    ocs_textbuf_free(ocs, &ramlog->textbufs[i]);
   }

   ocs_free(ocs, ramlog->textbufs, ramlog->textbuf_count*sizeof(*ramlog->textbufs));
   ramlog->textbufs = ((void*)0);
  }
  ocs_free(ocs, ramlog, sizeof(*ramlog));
 }
}
