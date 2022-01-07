
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int igu_base_addr; } ;


 int IGU_CMD_INT_ACK_BASE ;
 int bxe_igu_ack_sb_gen (struct bxe_softc*,int,int,int ,int,int,int) ;

void
bxe_igu_ack_sb(struct bxe_softc *sc,
               uint8_t igu_sb_id,
               uint8_t segment,
               uint16_t index,
               uint8_t op,
               uint8_t update)
{
    uint32_t igu_addr = sc->igu_base_addr;
    igu_addr += (IGU_CMD_INT_ACK_BASE + igu_sb_id)*8;
    bxe_igu_ack_sb_gen(sc, igu_sb_id, segment, index, op, update, igu_addr);
}
