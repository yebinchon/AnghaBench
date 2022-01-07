
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct terasic_mtl_softc {int mtl_reg_res; } ;


 int TERASIC_MTL_OFF_TEXTFRAMEBUFADDR ;
 int bus_write_4 (int ,int ,int ) ;
 int htole32 (int ) ;

void
terasic_mtl_reg_textframebufaddr_set(struct terasic_mtl_softc *sc,
    uint32_t addr)
{

 addr = htole32(addr);
 bus_write_4(sc->mtl_reg_res, TERASIC_MTL_OFF_TEXTFRAMEBUFADDR, addr);
}
