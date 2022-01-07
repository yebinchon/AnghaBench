
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qlnx_fastpath {int fp_task; int * fp_taskqueue; } ;
struct TYPE_5__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_1__ qlnx_host_t ;


 int QLNX_LOCK (TYPE_1__*) ;
 int QLNX_UNLOCK (TYPE_1__*) ;
 int taskqueue_drain (int *,int *) ;

__attribute__((used)) static void
qlnx_drain_fp_taskqueues(qlnx_host_t *ha)
{
 int i;
 struct qlnx_fastpath *fp;

 for (i = 0; i < ha->num_rss; i++) {
                fp = &ha->fp_array[i];

  if (fp->fp_taskqueue != ((void*)0)) {
   QLNX_UNLOCK(ha);
   taskqueue_drain(fp->fp_taskqueue, &fp->fp_task);
   QLNX_LOCK(ha);
  }
 }
 return;
}
