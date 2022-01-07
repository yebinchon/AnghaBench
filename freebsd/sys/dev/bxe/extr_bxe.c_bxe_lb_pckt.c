
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int NIG_REG_DEBUG_PACKET_LB ;
 int REG_WR_DMAE (struct bxe_softc*,int ,int*,int) ;

__attribute__((used)) static void
bxe_lb_pckt(struct bxe_softc *sc)
{
    uint32_t wb_write[3];


    wb_write[0] = 0x55555555;
    wb_write[1] = 0x55555555;
    wb_write[2] = 0x20;
    REG_WR_DMAE(sc, NIG_REG_DEBUG_PACKET_LB, wb_write, 3);


    wb_write[0] = 0x09000000;
    wb_write[1] = 0x55555555;
    wb_write[2] = 0x10;
    REG_WR_DMAE(sc, NIG_REG_DEBUG_PACKET_LB, wb_write, 3);
}
