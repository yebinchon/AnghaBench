
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct snd_midi {scalar_t__ hiwat; int qlock; int lock; int wsel; int rsel; int outq; int inq; } ;
struct cdev {struct snd_midi* si_drv1; } ;


 scalar_t__ MIDIQ_AVAIL (int ) ;
 int MIDIQ_EMPTY (int ) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

int
midi_poll(struct cdev *i_dev, int events, struct thread *td)
{
 struct snd_midi *m = i_dev->si_drv1;
 int revents;

 if (m == ((void*)0))
  return 0;

 revents = 0;

 mtx_lock(&m->lock);
 mtx_lock(&m->qlock);

 if (events & (POLLIN | POLLRDNORM))
  if (!MIDIQ_EMPTY(m->inq))
   events |= events & (POLLIN | POLLRDNORM);

 if (events & (POLLOUT | POLLWRNORM))
  if (MIDIQ_AVAIL(m->outq) < m->hiwat)
   events |= events & (POLLOUT | POLLWRNORM);

 if (revents == 0) {
  if (events & (POLLIN | POLLRDNORM))
   selrecord(td, &m->rsel);

  if (events & (POLLOUT | POLLWRNORM))
   selrecord(td, &m->wsel);
 }
 mtx_unlock(&m->lock);
 mtx_unlock(&m->qlock);

 return (revents);
}
