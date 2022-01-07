
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_softc {int unit; int playing; scalar_t__ waiting; int midi_number; int seq_lock; int * midis; int reset_cv; int out_cv; int state_cv; int out_q; } ;


 int DELAY (int) ;
 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 int MA_OWNED ;
 int MIDIQ_CLEAR (int ) ;
 int MIDIQ_EMPTY (int ) ;
 int MIDIQ_LEN (int ) ;
 int SEQ_DEBUG (int,int ) ;
 int SEQ_SYNC_TIMEOUT ;
 scalar_t__ SYNTH_INSYNC (int ) ;
 int cv_broadcast (int *) ;
 int cv_timedwait_sig (int *,int *,int) ;
 int hz ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static int
seq_sync(struct seq_softc *scp)
{
 int i, rl, sync[16], done;

 mtx_assert(&scp->seq_lock, MA_OWNED);

 SEQ_DEBUG(4, printf("seq_sync: unit %d.\n", scp->unit));





 while (!MIDIQ_EMPTY(scp->out_q)) {

  if (!scp->playing) {
   scp->playing = 1;
   cv_broadcast(&scp->state_cv);
   cv_broadcast(&scp->out_cv);
  }
  rl = MIDIQ_LEN(scp->out_q);

  i = cv_timedwait_sig(&scp->out_cv,
      &scp->seq_lock, SEQ_SYNC_TIMEOUT * hz);

  if (i == EINTR || i == ERESTART) {
   if (i == EINTR) {



    scp->playing = 0;
    cv_broadcast(&scp->out_cv);
   }
   return i;
  }
  if (i == EWOULDBLOCK && rl == MIDIQ_LEN(scp->out_q) &&
      scp->waiting == 0) {




   MIDIQ_CLEAR(scp->out_q);
   scp->playing = 0;
   cv_broadcast(&scp->state_cv);
   cv_broadcast(&scp->out_cv);
   cv_broadcast(&scp->reset_cv);





   SEQ_DEBUG(1, printf("seq_sync queue stuck, aborting\n"));

   return i;
  }
 }

 scp->playing = 0;




 mtx_unlock(&scp->seq_lock);
 for (i = 0; i < scp->midi_number; i++)
  sync[i] = 1;

 do {
  done = 1;
  for (i = 0; i < scp->midi_number; i++)
   if (sync[i]) {
    if (SYNTH_INSYNC(scp->midis[i]) == 0)
     sync[i] = 0;
    else
     done = 0;
   }
  if (!done)
   DELAY(5000);

 } while (!done);

 mtx_lock(&scp->seq_lock);
 return 0;
}
