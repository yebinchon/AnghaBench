
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct seq_softc {int unit; scalar_t__ busy; int midi_number; int seq_lock; int mapper_cookie; int mapper; scalar_t__* midis; } ;
struct cdev {struct seq_softc* si_drv1; } ;


 int ENXIO ;
 int SEQ_DEBUG (int,int ) ;
 int SYNTH_CLOSE (scalar_t__) ;
 int midimapper_close (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int seq_reset (struct seq_softc*) ;
 int seq_sync (struct seq_softc*) ;
 int timer_stop (struct seq_softc*) ;

int
mseq_close(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
 int i;
 struct seq_softc *scp = i_dev->si_drv1;
 int ret;

 if (scp == ((void*)0))
  return ENXIO;

 SEQ_DEBUG(2, printf("seq_close: unit %d.\n", scp->unit));

 mtx_lock(&scp->seq_lock);

 ret = ENXIO;
 if (scp->busy == 0)
  goto err;

 seq_reset(scp);
 seq_sync(scp);

 for (i = 0; i < scp->midi_number; i++)
  if (scp->midis[i])
   SYNTH_CLOSE(scp->midis[i]);

 midimapper_close(scp->mapper, scp->mapper_cookie);

 timer_stop(scp);

 scp->busy = 0;
 ret = 0;

err:
 SEQ_DEBUG(3, printf("seq_close: closed ret = %d.\n", ret));
 mtx_unlock(&scp->seq_lock);
 return ret;
}
