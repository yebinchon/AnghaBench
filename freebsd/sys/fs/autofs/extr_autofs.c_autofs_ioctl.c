
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct autofs_daemon_request {int dummy; } ;
struct autofs_daemon_done_101 {int dummy; } ;
struct autofs_daemon_done {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int sc_dev_opened; } ;





 int AUTOFS_DEBUG (char*,int) ;
 int EINVAL ;
 int KASSERT (int ,char*) ;
 int autofs_ioctl_done (struct autofs_daemon_done*) ;
 int autofs_ioctl_done_101 (struct autofs_daemon_done_101*) ;
 int autofs_ioctl_request (struct autofs_daemon_request*) ;
 TYPE_1__* autofs_softc ;

__attribute__((used)) static int
autofs_ioctl(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{

 KASSERT(autofs_softc->sc_dev_opened, ("not opened?"));

 switch (cmd) {
 case 128:
  return (autofs_ioctl_request(
      (struct autofs_daemon_request *)arg));
 case 129:
  return (autofs_ioctl_done_101(
      (struct autofs_daemon_done_101 *)arg));
 case 130:
  return (autofs_ioctl_done(
      (struct autofs_daemon_done *)arg));
 default:
  AUTOFS_DEBUG("invalid cmd %lx", cmd);
  return (EINVAL);
 }
}
