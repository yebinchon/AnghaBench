
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ipmi_softc {int dummy; } ;
struct ipmi_device {scalar_t__ ipmi_requests; int ipmi_select; int ipmi_completed_requests; } ;
struct cdev {struct ipmi_softc* si_drv1; } ;


 int IPMI_LOCK (struct ipmi_softc*) ;
 int IPMI_UNLOCK (struct ipmi_softc*) ;
 int POLLERR ;
 int POLLIN ;
 int POLLRDNORM ;
 int TAILQ_EMPTY (int *) ;
 scalar_t__ devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
ipmi_poll(struct cdev *cdev, int poll_events, struct thread *td)
{
 struct ipmi_device *dev;
 struct ipmi_softc *sc;
 int revents = 0;

 if (devfs_get_cdevpriv((void **)&dev))
  return (0);

 sc = cdev->si_drv1;
 IPMI_LOCK(sc);
 if (poll_events & (POLLIN | POLLRDNORM)) {
  if (!TAILQ_EMPTY(&dev->ipmi_completed_requests))
      revents |= poll_events & (POLLIN | POLLRDNORM);
  if (dev->ipmi_requests == 0)
      revents |= POLLERR;
 }

 if (revents == 0) {
  if (poll_events & (POLLIN | POLLRDNORM))
   selrecord(td, &dev->ipmi_select);
 }
 IPMI_UNLOCK(sc);

 return (revents);
}
