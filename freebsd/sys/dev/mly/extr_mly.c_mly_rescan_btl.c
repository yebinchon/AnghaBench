
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union mly_devinfo {int dummy; } mly_devinfo ;
struct mly_softc {TYPE_6__** mly_btl; } ;
struct mly_ioctl_getphysdevinfovalid {int dummy; } ;
struct mly_ioctl_getlogdevinfovalid {int dummy; } ;
struct TYPE_10__ {int target; int channel; scalar_t__ lun; scalar_t__ controller; } ;
struct TYPE_9__ {int logdev; } ;
struct TYPE_11__ {TYPE_4__ phys; TYPE_3__ log; } ;
struct TYPE_8__ {int value; int scale; } ;
struct mly_command_ioctl {int data_size; TYPE_5__ addr; int sub_ioctl; TYPE_2__ timeout; int opcode; } ;
struct mly_command {int mc_length; TYPE_1__* mc_packet; int mc_complete; int mc_flags; int * mc_data; } ;
struct TYPE_12__ {int mb_flags; } ;
struct TYPE_7__ {int ioctl; } ;


 int MDACIOCTL_GETLOGDEVINFOVALID ;
 int MDACIOCTL_GETPHYSDEVINFOVALID ;
 int MDACMD_IOCTL ;
 int MLY_BTL_RESCAN ;
 int MLY_BUS_IS_VALID (struct mly_softc*,int) ;
 scalar_t__ MLY_BUS_IS_VIRTUAL (struct mly_softc*,int) ;
 int MLY_CMD_DATAIN ;
 int MLY_LOGDEV_ID (struct mly_softc*,int,int) ;
 int MLY_TIMEOUT_SECONDS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int debug (int,char*,int,...) ;
 int debug_called (int) ;
 int * malloc (int,int ,int) ;
 scalar_t__ mly_alloc_command (struct mly_softc*,struct mly_command**) ;
 int mly_complete_rescan ;
 int mly_release_command (struct mly_command*) ;
 scalar_t__ mly_start (struct mly_command*) ;

__attribute__((used)) static void
mly_rescan_btl(struct mly_softc *sc, int bus, int target)
{
    struct mly_command *mc;
    struct mly_command_ioctl *mci;

    debug_called(1);


    if (!MLY_BUS_IS_VALID(sc, bus))
 return;


    if (mly_alloc_command(sc, &mc))
 return;


    if ((mc->mc_data = malloc(sizeof(union mly_devinfo), M_DEVBUF, M_NOWAIT | M_ZERO)) == ((void*)0)) {
 mly_release_command(mc);
 return;
    }
    mc->mc_flags |= MLY_CMD_DATAIN;
    mc->mc_complete = mly_complete_rescan;




    mci = (struct mly_command_ioctl *)&mc->mc_packet->ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->addr.phys.controller = 0;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;
    if (MLY_BUS_IS_VIRTUAL(sc, bus)) {
 mc->mc_length = mci->data_size = sizeof(struct mly_ioctl_getlogdevinfovalid);
 mci->sub_ioctl = MDACIOCTL_GETLOGDEVINFOVALID;
 mci->addr.log.logdev = MLY_LOGDEV_ID(sc, bus, target);
 debug(1, "logical device %d", mci->addr.log.logdev);
    } else {
 mc->mc_length = mci->data_size = sizeof(struct mly_ioctl_getphysdevinfovalid);
 mci->sub_ioctl = MDACIOCTL_GETPHYSDEVINFOVALID;
 mci->addr.phys.lun = 0;
 mci->addr.phys.target = target;
 mci->addr.phys.channel = bus;
 debug(1, "physical device %d:%d", mci->addr.phys.channel, mci->addr.phys.target);
    }





    if (mly_start(mc) != 0) {
 mly_release_command(mc);
    } else {
 sc->mly_btl[bus][target].mb_flags &= ~MLY_BTL_RESCAN;
    }
}
