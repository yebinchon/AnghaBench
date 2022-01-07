
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct twe_softc {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int int32_t ;
typedef int caddr_t ;


 int twe_ioctl (struct twe_softc*,int ,int ) ;

__attribute__((used)) static int
twe_ioctl_wrapper(struct cdev *dev, u_long cmd, caddr_t addr, int32_t flag, struct thread *td)
{
    struct twe_softc *sc = (struct twe_softc *)dev->si_drv1;

    return(twe_ioctl(sc, cmd, addr));
}
