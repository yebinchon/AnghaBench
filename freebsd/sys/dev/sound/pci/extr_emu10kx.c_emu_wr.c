
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int dummy; } ;


 unsigned int EMU_A2_PTR ;
 unsigned int EMU_PTR ;
 int KASSERT (int,char*) ;
 int emu_wr_nolock (struct emu_sc_info*,unsigned int,int ,unsigned int) ;

void
emu_wr(struct emu_sc_info *sc, unsigned int regno, uint32_t data, unsigned int size)
{
 KASSERT(regno != EMU_PTR, ("emu_wr: attempt to write to EMU_PTR"));
 KASSERT(regno != EMU_A2_PTR, ("emu_wr: attempt to write to EMU_A2_PTR"));

 emu_wr_nolock(sc, regno, data, size);
}
