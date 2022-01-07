
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct TYPE_2__ {int buf; } ;
struct ida_user_command {int blkno; int drive; int command; TYPE_1__ d; } ;
struct ida_softc {int lock; } ;
struct cmd_info {int len; int flags; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int int32_t ;
typedef int data ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENOIOCTL ;

 struct cmd_info* ida_cmd_lookup (int ) ;
 int ida_command (struct ida_softc*,int ,void*,int,int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
ida_ioctl (struct cdev *dev, u_long cmd, caddr_t addr, int32_t flag, struct thread *td)
{
 struct ida_softc *sc;
 struct ida_user_command *uc;
 struct cmd_info *ci;
 int len;
 int flags;
 int error;
 int data;
 void *daddr;

 sc = (struct ida_softc *)dev->si_drv1;
 uc = (struct ida_user_command *)addr;
 error = 0;

 switch (cmd) {
 case 128:
  ci = ida_cmd_lookup(uc->command);
  if (ci == ((void*)0)) {
   error = EINVAL;
   break;
  }
  len = ci->len;
  flags = ci->flags;
  if (len)
   daddr = &uc->d.buf;
  else {
   daddr = &data;
   len = sizeof(data);
  }
  mtx_lock(&sc->lock);
  error = ida_command(sc, uc->command, daddr, len,
        uc->drive, uc->blkno, flags);
  mtx_unlock(&sc->lock);
  break;
 default:
  error = ENOIOCTL;
  break;
 }
 return (error);
}
