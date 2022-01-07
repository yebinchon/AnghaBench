
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int dummy; } ;


 unsigned int EMU_DATA ;
 unsigned int EMU_DATA2 ;
 int KASSERT (int,char*) ;
 int emu_rd_nolock (struct emu_sc_info*,unsigned int,unsigned int) ;

uint32_t
emu_rd(struct emu_sc_info *sc, unsigned int regno, unsigned int size)
{
 uint32_t rd;

 KASSERT(regno != EMU_DATA, ("emu_rd: attempt to read DATA"));
 KASSERT(regno != EMU_DATA2, ("emu_rd: attempt to read DATA2"));

 rd = emu_rd_nolock(sc, regno, size);
 return (rd);
}
