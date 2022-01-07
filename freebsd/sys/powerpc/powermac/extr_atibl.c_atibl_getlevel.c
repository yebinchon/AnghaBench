
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atibl_softc {int sc_memr; } ;


 int RADEON_LVDS_BL_MOD_LEVEL_MASK ;
 int RADEON_LVDS_BL_MOD_LEVEL_SHIFT ;
 int RADEON_LVDS_GEN_CNTL ;
 int bus_read_4 (int ,int ) ;

__attribute__((used)) static int
atibl_getlevel(struct atibl_softc *sc)
{
 uint32_t lvds_gen_cntl;
 int level;

 lvds_gen_cntl = bus_read_4(sc->sc_memr, RADEON_LVDS_GEN_CNTL);

 level = ((lvds_gen_cntl & RADEON_LVDS_BL_MOD_LEVEL_MASK) >>
     RADEON_LVDS_BL_MOD_LEVEL_SHIFT);
 if (level != 0)
  level = ((level - 5) * 2) / 5;

 return (level);
}
