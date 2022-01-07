
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct mly_softc {int dummy; } ;
struct TYPE_3__ {int operation_device; } ;
struct TYPE_4__ {TYPE_1__ deviceoperation; } ;
struct mly_command_ioctl {TYPE_2__ param; int sub_ioctl; } ;
typedef int mci ;


 int EIO ;
 int MDACIOCTL_FLUSHDEVICEDATA ;
 int MLY_OPDEVICE_PHYSICAL_CONTROLLER ;
 int bzero (struct mly_command_ioctl*,int) ;
 int debug_called (int) ;
 int mly_ioctl (struct mly_softc*,struct mly_command_ioctl*,int *,int ,scalar_t__*,int *,int *) ;

__attribute__((used)) static int
mly_flush(struct mly_softc *sc)
{
    struct mly_command_ioctl mci;
    u_int8_t status;
    int error;

    debug_called(1);


    bzero(&mci, sizeof(mci));
    mci.sub_ioctl = MDACIOCTL_FLUSHDEVICEDATA;
    mci.param.deviceoperation.operation_device = MLY_OPDEVICE_PHYSICAL_CONTROLLER;


    if ((error = mly_ioctl(sc, &mci, ((void*)0), 0, &status, ((void*)0), ((void*)0))))
 return(error);

    return((status == 0) ? 0 : EIO);
}
