
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_softc {int unit; int midi_number; int seq_lock; int * midis; int out_q; int in_q; int reset_cv; int out_cv; int state_cv; scalar_t__ playing; } ;
typedef int kobj_t ;


 int MA_OWNED ;
 int MIDIQ_CLEAR (int ) ;
 int SEQ_DEBUG (int,int ) ;
 int SYNTH_BENDER (int ,int,int) ;
 int SYNTH_CONTROLLER (int ,int,int,int ) ;
 int SYNTH_RESET (int ) ;
 int cv_broadcast (int *) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
seq_reset(struct seq_softc *scp)
{
 int chn, i;
 kobj_t m;

 mtx_assert(&scp->seq_lock, MA_OWNED);

 SEQ_DEBUG(5, printf("seq_reset: unit %d.\n", scp->unit));






 scp->playing = 0;
 cv_broadcast(&scp->state_cv);
 cv_broadcast(&scp->out_cv);
 cv_broadcast(&scp->reset_cv);




 MIDIQ_CLEAR(scp->in_q);
 MIDIQ_CLEAR(scp->out_q);

 for (i = 0; i < scp->midi_number; i++) {
  m = scp->midis[i];
  mtx_unlock(&scp->seq_lock);
  SYNTH_RESET(m);
  for (chn = 0; chn < 16; chn++) {
   SYNTH_CONTROLLER(m, chn, 123, 0);
   SYNTH_CONTROLLER(m, chn, 121, 0);
   SYNTH_BENDER(m, chn, 1 << 13);
  }
  mtx_lock(&scp->seq_lock);
 }
}
