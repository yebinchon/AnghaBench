
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct terasic_mtl_softc {int mtl_reg_res; } ;


 int TERASIC_MTL_OFF_TEXTFRAMEBUFADDR ;
 int bus_read_4 (int ,int ) ;
 int le32toh (int ) ;

void
terasic_mtl_reg_textframebufaddr_get(struct terasic_mtl_softc *sc,
    uint32_t *addrp)
{
 uint32_t addr;

 addr = bus_read_4(sc->mtl_reg_res, TERASIC_MTL_OFF_TEXTFRAMEBUFADDR);
 *addrp = le32toh(addr);
}
