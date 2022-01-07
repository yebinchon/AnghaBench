
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct igu_ack_register {int sb_id_and_flags; int status_block_index; } ;
struct bxe_softc {TYPE_1__* bar; } ;
struct TYPE_2__ {int handle; int tag; } ;


 int BUS_SPACE_BARRIER_WRITE ;
 scalar_t__ COMMAND_REG_INT_ACK ;
 scalar_t__ HC_REG_COMMAND_REG ;
 int IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT ;
 int IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT ;
 int IGU_ACK_REGISTER_STORM_ID_SHIFT ;
 int IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT ;
 int REG_WR (struct bxe_softc*,scalar_t__,scalar_t__) ;
 int SC_PORT (struct bxe_softc*) ;
 int bus_space_barrier (int ,int ,int ,int ,int ) ;
 int mb () ;

__attribute__((used)) static inline void
bxe_hc_ack_sb(struct bxe_softc *sc,
              uint8_t sb_id,
              uint8_t storm,
              uint16_t index,
              uint8_t op,
              uint8_t update)
{
    uint32_t hc_addr = (HC_REG_COMMAND_REG + SC_PORT(sc)*32 +
                        COMMAND_REG_INT_ACK);
    struct igu_ack_register igu_ack;

    igu_ack.status_block_index = index;
    igu_ack.sb_id_and_flags =
        ((sb_id << IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT) |
         (storm << IGU_ACK_REGISTER_STORM_ID_SHIFT) |
         (update << IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT) |
         (op << IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT));

    REG_WR(sc, hc_addr, (*(uint32_t *)&igu_ack));


    bus_space_barrier(sc->bar[0].tag, sc->bar[0].handle, 0, 0,
                      BUS_SPACE_BARRIER_WRITE);
    mb();
}
