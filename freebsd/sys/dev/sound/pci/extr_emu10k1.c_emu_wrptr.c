
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int addrmask; } ;


 int EMU_DATA ;
 int EMU_PTR ;
 int EMU_PTR_CHNO_MASK ;
 int emu_rd (struct sc_info*,int ,int) ;
 int emu_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
emu_wrptr(struct sc_info *sc, int chn, int reg, u_int32_t data)
{
 u_int32_t ptr, mask, size, offset;

 ptr = ((reg << 16) & sc->addrmask) | (chn & EMU_PTR_CHNO_MASK);
 emu_wr(sc, EMU_PTR, ptr, 4);
 if (reg & 0xff000000) {
  size = (reg >> 24) & 0x3f;
  offset = (reg >> 16) & 0x1f;
  mask = ((1 << size) - 1) << offset;
  data <<= offset;
  data &= mask;
  data |= emu_rd(sc, EMU_DATA, 4) & ~mask;
 }
 emu_wr(sc, EMU_DATA, data, 4);
}
