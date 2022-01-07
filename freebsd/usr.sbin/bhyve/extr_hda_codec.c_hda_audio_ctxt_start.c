
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_audio_ctxt {int run; int (* do_setup ) (int ) ;int mtx; int cond; int priv; struct hda_audio_ctxt* started; } ;


 int assert (struct hda_audio_ctxt*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static int
hda_audio_ctxt_start(struct hda_audio_ctxt *actx)
{
 int err = 0;

 assert(actx);
 assert(actx->started);


 if (actx->run)
  return (-1);

 pthread_mutex_lock(&actx->mtx);
 err = (* actx->do_setup)(actx->priv);
 if (!err) {
  actx->run = 1;
  pthread_cond_signal(&actx->cond);
 }
 pthread_mutex_unlock(&actx->mtx);

 return (err);
}
