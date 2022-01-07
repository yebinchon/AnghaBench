
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mos_softc {int* mos_phyaddrs; } ;


 int MOS_PAUSE_REWRITES ;
 int MOS_PAUSE_TRHD ;
 int mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int ) ;

__attribute__((used)) static void
mos_chip_init(struct mos_softc *sc)
{
 int i;





 if (mos_reg_read_1(sc, MOS_PAUSE_TRHD) != -1) {
  for (i = 0; i < MOS_PAUSE_REWRITES; i++)
   mos_reg_write_1(sc, MOS_PAUSE_TRHD, 0);
 }
 sc->mos_phyaddrs[0] = 1;
 sc->mos_phyaddrs[1] = 0xFF;
}
