
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct emu_sc_info {int dummy; } ;


 int EMU_A2_PTR ;
 int EMU_DATA2 ;
 int EMU_RWLOCK () ;
 int EMU_RWUNLOCK () ;
 int emu_rd_nolock (struct emu_sc_info*,int ,int) ;
 int emu_wr_nolock (struct emu_sc_info*,int ,int,int) ;

uint32_t
emu_rd_p16vptr(struct emu_sc_info *sc, uint16_t chn, uint16_t reg)
{
 uint32_t val;


 EMU_RWLOCK();
 emu_wr_nolock(sc, EMU_A2_PTR, (reg << 16) | chn, 4);
 val = emu_rd_nolock(sc, EMU_DATA2, 4);

 EMU_RWUNLOCK();

 return (val);
}
