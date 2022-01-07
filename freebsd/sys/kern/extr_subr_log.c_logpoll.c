
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int sc_selp; } ;


 int POLLIN ;
 int POLLRDNORM ;
 TYPE_1__ logsoftc ;
 scalar_t__ msgbuf_getcount (int ) ;
 int msgbuf_lock ;
 int msgbufp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
logpoll(struct cdev *dev, int events, struct thread *td)
{
 int revents = 0;

 if (events & (POLLIN | POLLRDNORM)) {
  mtx_lock(&msgbuf_lock);
  if (msgbuf_getcount(msgbufp) > 0)
   revents |= events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &logsoftc.sc_selp);
  mtx_unlock(&msgbuf_lock);
 }
 return (revents);
}
