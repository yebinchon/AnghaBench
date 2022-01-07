
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct xbd_softc {int dummy; } ;
struct thread {int dummy; } ;
struct disk {struct xbd_softc* d_drv1; } ;


 int ENOTTY ;
 int ENXIO ;

__attribute__((used)) static int
xbd_ioctl(struct disk *dp, u_long cmd, void *addr, int flag, struct thread *td)
{
 struct xbd_softc *sc = dp->d_drv1;

 if (sc == ((void*)0))
  return (ENXIO);

 return (ENOTTY);
}
