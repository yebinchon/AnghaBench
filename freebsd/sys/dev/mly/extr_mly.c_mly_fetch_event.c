
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


typedef int u_int32_t ;
struct mly_softc {scalar_t__ mly_event_counter; scalar_t__ mly_event_waiting; } ;
struct mly_event {int dummy; } ;
struct TYPE_11__ {int sequence_number_low; } ;
struct TYPE_12__ {TYPE_5__ getevent; } ;
struct TYPE_10__ {int value; int scale; } ;
struct TYPE_8__ {int lun; int target; scalar_t__ controller; scalar_t__ channel; } ;
struct TYPE_9__ {TYPE_2__ phys; } ;
struct mly_command_ioctl {int data_size; TYPE_6__ param; int sub_ioctl; TYPE_4__ timeout; TYPE_3__ addr; int opcode; } ;
struct mly_command {int mc_length; TYPE_1__* mc_packet; int mc_complete; int mc_flags; int * mc_data; } ;
struct TYPE_7__ {int ioctl; } ;


 int MDACIOCTL_GETEVENT ;
 int MDACMD_IOCTL ;
 int MLY_CMD_DATAIN ;
 int MLY_TIMEOUT_SECONDS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int debug (int,char*,int) ;
 int debug_called (int) ;
 int * malloc (int,int ,int) ;
 scalar_t__ mly_alloc_command (struct mly_softc*,struct mly_command**) ;
 int mly_complete_event ;
 int mly_printf (struct mly_softc*,char*,int) ;
 int mly_release_command (struct mly_command*) ;
 scalar_t__ mly_start (struct mly_command*) ;

__attribute__((used)) static void
mly_fetch_event(struct mly_softc *sc)
{
    struct mly_command *mc;
    struct mly_command_ioctl *mci;
    u_int32_t event;

    debug_called(1);


    if (mly_alloc_command(sc, &mc))
 return;


    if ((mc->mc_data = malloc(sizeof(struct mly_event), M_DEVBUF, M_NOWAIT | M_ZERO)) == ((void*)0)) {
 mly_release_command(mc);
 return;
    }
    mc->mc_length = sizeof(struct mly_event);
    mc->mc_flags |= MLY_CMD_DATAIN;
    mc->mc_complete = mly_complete_event;





    if (sc->mly_event_counter == sc->mly_event_waiting) {
 mly_release_command(mc);
 return;
    }
    event = sc->mly_event_counter++;







    mci = (struct mly_command_ioctl *)&mc->mc_packet->ioctl;
    mci->opcode = MDACMD_IOCTL;
    mci->data_size = sizeof(struct mly_event);
    mci->addr.phys.lun = (event >> 16) & 0xff;
    mci->addr.phys.target = (event >> 24) & 0xff;
    mci->addr.phys.channel = 0;
    mci->addr.phys.controller = 0;
    mci->timeout.value = 30;
    mci->timeout.scale = MLY_TIMEOUT_SECONDS;
    mci->sub_ioctl = MDACIOCTL_GETEVENT;
    mci->param.getevent.sequence_number_low = event & 0xffff;

    debug(1, "fetch event %u", event);







    if (mly_start(mc) != 0) {
 mly_printf(sc, "couldn't fetch event %u\n", event);
 mly_release_command(mc);
    }
}
