
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int mpu_intr; int mpu; } ;


 int EMU_INTE ;
 int EMU_INTE_MIDIRXENABLE ;
 int emu_intr2 ;
 int emu_mpu_class ;
 int emu_rd (struct sc_info*,int ,int) ;
 int emu_wr (struct sc_info*,int ,int,int) ;
 int mpu401_init (int *,struct sc_info*,int ,int *) ;

__attribute__((used)) static void
emu_midiattach(struct sc_info *sc)
{
 int i;

 i = emu_rd(sc, EMU_INTE, 4);
 i |= EMU_INTE_MIDIRXENABLE;
 emu_wr(sc, EMU_INTE, i, 4);

 sc->mpu = mpu401_init(&emu_mpu_class, sc, emu_intr2, &sc->mpu_intr);
}
