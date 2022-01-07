
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct terasic_mtl_softc {int mtl_reg_res; } ;


 int TERASIC_MTL_OFF_TEXTCURSOR ;
 int TERASIC_MTL_TEXTCURSOR_COL_SHIFT ;
 int bus_write_4 (int ,int ,int) ;
 int htole32 (int) ;

void
terasic_mtl_reg_textcursor_set(struct terasic_mtl_softc *sc, uint8_t col,
    uint8_t row)
{
 uint32_t v;

 v = (col << TERASIC_MTL_TEXTCURSOR_COL_SHIFT) | row;
 v = htole32(v);
 bus_write_4(sc->mtl_reg_res, TERASIC_MTL_OFF_TEXTCURSOR, v);
}
