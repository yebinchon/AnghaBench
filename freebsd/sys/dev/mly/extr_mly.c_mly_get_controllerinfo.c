
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct mly_softc {int * mly_controllerparam; int * mly_controllerinfo; } ;
struct mly_command_ioctl {int sub_ioctl; } ;
typedef int mci ;


 int EIO ;
 int MDACIOCTL_GETCONTROLLERINFO ;
 int MDACIOCTL_GETCONTROLLERPARAMETER ;
 int M_DEVBUF ;
 int bzero (struct mly_command_ioctl*,int) ;
 int debug_called (int) ;
 int free (int *,int ) ;
 int mly_ioctl (struct mly_softc*,struct mly_command_ioctl*,void**,int,scalar_t__*,int *,int *) ;

__attribute__((used)) static int
mly_get_controllerinfo(struct mly_softc *sc)
{
    struct mly_command_ioctl mci;
    u_int8_t status;
    int error;

    debug_called(1);

    if (sc->mly_controllerinfo != ((void*)0))
 free(sc->mly_controllerinfo, M_DEVBUF);


    bzero(&mci, sizeof(mci));
    sc->mly_controllerinfo = ((void*)0);
    mci.sub_ioctl = MDACIOCTL_GETCONTROLLERINFO;
    if ((error = mly_ioctl(sc, &mci, (void **)&sc->mly_controllerinfo, sizeof(*sc->mly_controllerinfo),
      &status, ((void*)0), ((void*)0))))
 return(error);
    if (status != 0)
 return(EIO);

    if (sc->mly_controllerparam != ((void*)0))
 free(sc->mly_controllerparam, M_DEVBUF);


    bzero(&mci, sizeof(mci));
    sc->mly_controllerparam = ((void*)0);
    mci.sub_ioctl = MDACIOCTL_GETCONTROLLERPARAMETER;
    if ((error = mly_ioctl(sc, &mci, (void **)&sc->mly_controllerparam, sizeof(*sc->mly_controllerparam),
      &status, ((void*)0), ((void*)0))))
 return(error);
    if (status != 0)
 return(EIO);

    return(0);
}
