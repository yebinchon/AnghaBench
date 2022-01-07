
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {unsigned int address_mask; } ;


 int EMU_DATA ;
 int EMU_PTR ;
 unsigned int EMU_PTR_CHNO_MASK ;
 int EMU_RWLOCK () ;
 int EMU_RWUNLOCK () ;
 int emu_rd_nolock (struct emu_sc_info*,int ,int) ;
 int emu_wr_nolock (struct emu_sc_info*,int ,int,int) ;

void
emu_wrptr(struct emu_sc_info *sc, unsigned int chn, unsigned int reg, uint32_t data)
{
 uint32_t ptr, mask, size, offset;

 ptr = ((reg << 16) & sc->address_mask) | (chn & EMU_PTR_CHNO_MASK);

 EMU_RWLOCK();
 emu_wr_nolock(sc, EMU_PTR, ptr, 4);





 if (reg & 0xff000000) {
  size = (reg >> 24) & 0x3f;
  offset = (reg >> 16) & 0x1f;
  mask = ((1 << size) - 1) << offset;
  data <<= offset;
  data &= mask;
  data |= emu_rd_nolock(sc, EMU_DATA, 4) & ~mask;
 }
 emu_wr_nolock(sc, EMU_DATA, data, 4);
 EMU_RWUNLOCK();
}
