
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_midi {struct snd_midi* synth; int lock; int qlock; int outq; int inq; int cookie; TYPE_1__* dev; } ;
struct TYPE_2__ {int * si_drv1; } ;


 int MA_OWNED ;
 struct snd_midi* MIDIQ_BUF (int ) ;
 int MIDI_DEBUG (int,int ) ;
 int MPU_UNINIT (struct snd_midi*,int ) ;
 int M_MIDI ;
 int SA_XLOCKED ;
 int TAILQ_REMOVE (int *,struct snd_midi*,int ) ;
 int destroy_dev (TYPE_1__*) ;
 int free (struct snd_midi*,int ) ;
 int link ;
 int midi_devs ;
 int midistat_lock ;
 int mtx_assert (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
midi_destroy(struct snd_midi *m, int midiuninit)
{
 sx_assert(&midistat_lock, SA_XLOCKED);
 mtx_assert(&m->lock, MA_OWNED);

 MIDI_DEBUG(3, printf("midi_destroy\n"));
 m->dev->si_drv1 = ((void*)0);
 mtx_unlock(&m->lock);
 destroy_dev(m->dev);
 TAILQ_REMOVE(&midi_devs, m, link);
 if (midiuninit)
  MPU_UNINIT(m, m->cookie);
 free(MIDIQ_BUF(m->inq), M_MIDI);
 free(MIDIQ_BUF(m->outq), M_MIDI);
 mtx_destroy(&m->qlock);
 mtx_destroy(&m->lock);
 free(m->synth, M_MIDI);
 free(m, M_MIDI);
 return 0;
}
