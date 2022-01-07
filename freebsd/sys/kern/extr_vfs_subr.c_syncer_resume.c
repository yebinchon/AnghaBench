
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNCER_RUNNING ;
 int cv_broadcast (int *) ;
 int first_printf ;
 int kproc_resume (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sync_mtx ;
 int sync_wakeup ;
 int syncer_state ;
 int updateproc ;

void
syncer_resume(void)
{

 mtx_lock(&sync_mtx);
 first_printf = 1;
 syncer_state = SYNCER_RUNNING;
 mtx_unlock(&sync_mtx);
 cv_broadcast(&sync_wakeup);
 kproc_resume(updateproc);
}
