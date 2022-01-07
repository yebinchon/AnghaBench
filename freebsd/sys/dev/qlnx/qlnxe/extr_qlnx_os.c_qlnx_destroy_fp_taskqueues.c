
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qlnx_fastpath {int * fp_taskqueue; int fp_task; } ;
struct TYPE_3__ {int num_rss; struct qlnx_fastpath* fp_array; } ;
typedef TYPE_1__ qlnx_host_t ;


 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
qlnx_destroy_fp_taskqueues(qlnx_host_t *ha)
{
 int i;
 struct qlnx_fastpath *fp;

 for (i = 0; i < ha->num_rss; i++) {

                fp = &ha->fp_array[i];

  if (fp->fp_taskqueue != ((void*)0)) {

   taskqueue_drain(fp->fp_taskqueue, &fp->fp_task);
   taskqueue_free(fp->fp_taskqueue);
   fp->fp_taskqueue = ((void*)0);
  }
 }
 return;
}
