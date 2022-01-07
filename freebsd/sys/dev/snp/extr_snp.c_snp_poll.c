
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct snp_softc {int snp_outpoll; int snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 scalar_t__ devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 scalar_t__ ttyoutq_bytesused (int *) ;

__attribute__((used)) static int
snp_poll(struct cdev *dev, int events, struct thread *td)
{
 struct snp_softc *ss;
 struct tty *tp;
 int revents;

 if (devfs_get_cdevpriv((void **)&ss) != 0)
  return (events &
      (POLLHUP|POLLIN|POLLRDNORM|POLLOUT|POLLWRNORM));

 revents = 0;

 if (events & (POLLIN | POLLRDNORM)) {
  tp = ss->snp_tty;
  if (tp != ((void*)0)) {
   tty_lock(tp);
   if (ttyoutq_bytesused(&ss->snp_outq) > 0)
    revents |= events & (POLLIN | POLLRDNORM);
   tty_unlock(tp);
  }
 }

 if (revents == 0)
  selrecord(td, &ss->snp_outpoll);

 return (revents);
}
