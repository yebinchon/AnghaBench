
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ bus_addr_t ;


 int DMAE_LEN32_WR_MAX (struct bxe_softc*) ;
 int bxe_write_dmae (struct bxe_softc*,scalar_t__,int,int) ;

void
bxe_write_dmae_phys_len(struct bxe_softc *sc,
                        bus_addr_t phys_addr,
                        uint32_t addr,
                        uint32_t len)
{
    int dmae_wr_max = DMAE_LEN32_WR_MAX(sc);
    int offset = 0;

    while (len > dmae_wr_max) {
        bxe_write_dmae(sc,
                       (phys_addr + offset),
                       (addr + offset),
                       dmae_wr_max);
        offset += (dmae_wr_max * 4);
        len -= dmae_wr_max;
    }

    bxe_write_dmae(sc,
                   (phys_addr + offset),
                   (addr + offset),
                   len);
}
