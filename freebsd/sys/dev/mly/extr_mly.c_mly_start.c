
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ flag; int data; } ;
union mly_command_packet {TYPE_3__ mmbox; } ;
struct mly_softc {int mly_state; size_t mly_mmbox_command_index; int mly_idbr; int mly_regs_resource; TYPE_2__* mly_mmbox; int mly_command_mailbox; } ;
struct mly_command {TYPE_5__* mc_packet; int mc_flags; int mc_packetphys; int mc_timestamp; int mc_slot; struct mly_softc* mc_sc; } ;
struct TYPE_9__ {scalar_t__ flag; int data; } ;
struct TYPE_6__ {int command_id; } ;
struct TYPE_10__ {TYPE_4__ mmbox; TYPE_1__ generic; } ;
struct TYPE_7__ {union mly_command_packet* mmm_command; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 int EBUSY ;
 int MLY_AM_CMDSENT ;
 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_CMD_BUSY ;
 int MLY_HM_CMDSENT ;
 scalar_t__ MLY_IDBR_TRUE (struct mly_softc*,int ) ;
 int MLY_MMBOX_COMMANDS ;
 int MLY_SET_MBOX (struct mly_softc*,int ,int *) ;
 int MLY_SET_REG (struct mly_softc*,int ,int ) ;
 int MLY_STATE_MMBOX_ACTIVE ;
 int bcopy (int ,int ,int) ;
 int bus_barrier (int ,int ,int ,int ) ;
 int debug_called (int) ;
 int mly_enqueue_busy (struct mly_command*) ;
 int mly_map_command (struct mly_command*) ;
 int time_second ;

__attribute__((used)) static int
mly_start(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;
    union mly_command_packet *pkt;

    debug_called(2);
    MLY_ASSERT_LOCKED(sc);




    mly_map_command(mc);
    mc->mc_packet->generic.command_id = mc->mc_slot;
    if (!(sc->mly_state & MLY_STATE_MMBOX_ACTIVE)) {



 if (MLY_IDBR_TRUE(sc, MLY_HM_CMDSENT)) {
     return(EBUSY);
 }
 mc->mc_flags |= MLY_CMD_BUSY;




 MLY_SET_MBOX(sc, sc->mly_command_mailbox, &mc->mc_packetphys);
 MLY_SET_REG(sc, sc->mly_idbr, MLY_HM_CMDSENT);

    } else {

 pkt = &sc->mly_mmbox->mmm_command[sc->mly_mmbox_command_index];


 if (pkt->mmbox.flag != 0) {
     return(EBUSY);
 }
 mc->mc_flags |= MLY_CMD_BUSY;


 bcopy(mc->mc_packet->mmbox.data, pkt->mmbox.data, sizeof(pkt->mmbox.data));

 bus_barrier(sc->mly_regs_resource, 0, 0, BUS_SPACE_BARRIER_WRITE);

 pkt->mmbox.flag = mc->mc_packet->mmbox.flag;

 bus_barrier(sc->mly_regs_resource, 0, 0, BUS_SPACE_BARRIER_WRITE);


 MLY_SET_REG(sc, sc->mly_idbr, MLY_AM_CMDSENT);
 sc->mly_mmbox_command_index = (sc->mly_mmbox_command_index + 1) % MLY_MMBOX_COMMANDS;
    }

    mly_enqueue_busy(mc);
    return(0);
}
