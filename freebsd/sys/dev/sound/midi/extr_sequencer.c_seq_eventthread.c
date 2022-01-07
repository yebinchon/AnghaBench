
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {scalar_t__ done; scalar_t__ playing; scalar_t__ out_water; int seq_lock; int th_cv; int out_sel; int out_cv; int out_q; int empty_cv; int state_cv; } ;


 int EV_SZ ;
 scalar_t__ MIDIQ_AVAIL (int ) ;
 int MIDIQ_DEQ (int ,int *,int) ;
 scalar_t__ MIDIQ_EMPTY (int ) ;
 int SEQ_DEBUG (int,int ) ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int selwakeup (int *) ;
 int seq_processevent (struct seq_softc*,int *) ;

__attribute__((used)) static void
seq_eventthread(void *arg)
{
 struct seq_softc *scp = arg;
 u_char event[EV_SZ];

 mtx_lock(&scp->seq_lock);
 SEQ_DEBUG(2, printf("seq_eventthread started\n"));
 while (scp->done == 0) {
restart:
  while (scp->playing == 0) {
   cv_wait(&scp->state_cv, &scp->seq_lock);
   if (scp->done)
    goto done;
  }

  while (MIDIQ_EMPTY(scp->out_q)) {
   cv_broadcast(&scp->empty_cv);
   cv_wait(&scp->out_cv, &scp->seq_lock);
   if (scp->playing == 0)
    goto restart;
   if (scp->done)
    goto done;
  }

  MIDIQ_DEQ(scp->out_q, event, EV_SZ);

  if (MIDIQ_AVAIL(scp->out_q) < scp->out_water) {
   cv_broadcast(&scp->out_cv);
   selwakeup(&scp->out_sel);
  }
  seq_processevent(scp, event);
 }

done:
 cv_broadcast(&scp->th_cv);
 mtx_unlock(&scp->seq_lock);
 SEQ_DEBUG(2, printf("seq_eventthread finished\n"));
 kproc_exit(0);
}
