
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {int readq; } ;


 int IFQ_IS_EMPTY (int *) ;
 int POLLIN ;
 int POLLRDNORM ;

__attribute__((used)) static int
ngdpoll(struct cdev *dev, int events, struct thread *td)
{
 priv_p priv = (priv_p )dev->si_drv1;
 int revents = 0;

 if (events & (POLLIN | POLLRDNORM) &&
     !IFQ_IS_EMPTY(&priv->readq))
  revents |= events & (POLLIN | POLLRDNORM);

 return (revents);
}
