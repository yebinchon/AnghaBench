
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int mtx; int sel; int devq; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__ devsoftc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
devpoll(struct cdev *dev, int events, struct thread *td)
{
 int revents = 0;

 mtx_lock(&devsoftc.mtx);
 if (events & (POLLIN | POLLRDNORM)) {
  if (!TAILQ_EMPTY(&devsoftc.devq))
   revents = events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &devsoftc.sel);
 }
 mtx_unlock(&devsoftc.mtx);

 return (revents);
}
