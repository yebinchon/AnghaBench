
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct creator_softc {int sc_va; } ;
struct cdev {struct creator_softc* si_drv1; } ;
typedef int caddr_t ;


 int creator_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
creator_fb_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
 struct creator_softc *sc;

 sc = dev->si_drv1;
 return (creator_ioctl(&sc->sc_va, cmd, data));
}
