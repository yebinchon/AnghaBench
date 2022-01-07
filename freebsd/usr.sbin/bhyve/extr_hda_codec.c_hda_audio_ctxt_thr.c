
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_audio_ctxt {int mtx; int priv; int (* do_transfer ) (int ) ;int cond; int run; int name; } ;


 int DPRINTF (char*,int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void *
hda_audio_ctxt_thr(void *arg)
{
 struct hda_audio_ctxt *actx = arg;

 DPRINTF("Start Thread: %s\n", actx->name);

 pthread_mutex_lock(&actx->mtx);
 while (1) {
  while (!actx->run)
   pthread_cond_wait(&actx->cond, &actx->mtx);

  actx->do_transfer(actx->priv);
 }
 pthread_mutex_unlock(&actx->mtx);

 pthread_exit(((void*)0));
 return (((void*)0));
}
