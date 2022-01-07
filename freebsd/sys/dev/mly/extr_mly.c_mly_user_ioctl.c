
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct mly_user_health {int dummy; } ;
struct mly_user_command {int dummy; } ;
struct mly_softc {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef int int32_t ;
typedef scalar_t__ caddr_t ;


 int ENOIOCTL ;


 int mly_user_command (struct mly_softc*,struct mly_user_command*) ;
 int mly_user_health (struct mly_softc*,struct mly_user_health*) ;

__attribute__((used)) static int
mly_user_ioctl(struct cdev *dev, u_long cmd, caddr_t addr,
    int32_t flag, struct thread *td)
{
    struct mly_softc *sc = (struct mly_softc *)dev->si_drv1;
    struct mly_user_command *uc = (struct mly_user_command *)addr;
    struct mly_user_health *uh = (struct mly_user_health *)addr;

    switch(cmd) {
    case 129:
 return(mly_user_command(sc, uc));
    case 128:
 return(mly_user_health(sc, uh));
    default:
 return(ENOIOCTL);
    }
}
