
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct seq_softc {int unit; int playing; int out_water; int seq_lock; int in_sel; int in_q; int out_sel; int out_q; int out_cv; int state_cv; } ;
struct cdev {struct seq_softc* si_drv1; } ;


 int MIDIQ_AVAIL (int ) ;
 int MIDIQ_LEN (int ) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int SEQ_DEBUG (int,int ) ;
 int cv_broadcast (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int selrecord (struct thread*,int *) ;

int
mseq_poll(struct cdev *i_dev, int events, struct thread *td)
{
 int ret, lim;
 struct seq_softc *scp = i_dev->si_drv1;

 SEQ_DEBUG(3, printf("seq_poll: unit %d.\n", scp->unit));
 SEQ_DEBUG(1, printf("seq_poll: unit %d.\n", scp->unit));

 mtx_lock(&scp->seq_lock);

 ret = 0;


 if ((events & (POLLOUT | POLLWRNORM)) != 0) {

  scp->playing = 1;
  cv_broadcast(&scp->state_cv);
  cv_broadcast(&scp->out_cv);

  lim = scp->out_water;

  if (MIDIQ_AVAIL(scp->out_q) < lim)

   selrecord(td, &scp->out_sel);
  else

   ret |= events & (POLLOUT | POLLWRNORM);
 }
 if ((events & (POLLIN | POLLRDNORM)) != 0) {



  lim = 1;
  if (MIDIQ_LEN(scp->in_q) < lim)

   selrecord(td, &scp->in_sel);
  else

   ret |= events & (POLLIN | POLLRDNORM);
 }
 mtx_unlock(&scp->seq_lock);

 return (ret);
}
