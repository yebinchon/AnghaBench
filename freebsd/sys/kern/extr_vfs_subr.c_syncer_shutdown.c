
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_NOSYNC ;
 int SYNCER_SHUTTING_DOWN ;
 int cv_broadcast (int *) ;
 int kproc_shutdown (void*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ rushjob ;
 int sync_mtx ;
 int sync_wakeup ;
 int syncer_state ;

__attribute__((used)) static void
syncer_shutdown(void *arg, int howto)
{

 if (howto & RB_NOSYNC)
  return;
 mtx_lock(&sync_mtx);
 syncer_state = SYNCER_SHUTTING_DOWN;
 rushjob = 0;
 mtx_unlock(&sync_mtx);
 cv_broadcast(&sync_wakeup);
 kproc_shutdown(arg, howto);
}
