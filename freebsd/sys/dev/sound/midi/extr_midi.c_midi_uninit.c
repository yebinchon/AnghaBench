
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi {int lock; scalar_t__ wchan; scalar_t__ rchan; scalar_t__ busy; } ;


 int EBUSY ;
 int midi_destroy (struct snd_midi*,int ) ;
 int midistat_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int wakeup (scalar_t__*) ;

int
midi_uninit(struct snd_midi *m)
{
 int err;

 err = EBUSY;
 sx_xlock(&midistat_lock);
 mtx_lock(&m->lock);
 if (m->busy) {
  if (!(m->rchan || m->wchan))
   goto err;

  if (m->rchan) {
   wakeup(&m->rchan);
   m->rchan = 0;
  }
  if (m->wchan) {
   wakeup(&m->wchan);
   m->wchan = 0;
  }
 }
 err = midi_destroy(m, 0);
 if (!err)
  goto exit;

err:
 mtx_unlock(&m->lock);
exit:
 sx_xunlock(&midistat_lock);
 return err;
}
