
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct vtblk_softc {int dummy; } ;
struct thread {int dummy; } ;
struct disk {struct vtblk_softc* d_drv1; } ;


 int ENOTTY ;
 int ENXIO ;

__attribute__((used)) static int
vtblk_ioctl(struct disk *dp, u_long cmd, void *addr, int flag,
    struct thread *td)
{
 struct vtblk_softc *sc;

 if ((sc = dp->d_drv1) == ((void*)0))
  return (ENXIO);

 return (ENOTTY);
}
