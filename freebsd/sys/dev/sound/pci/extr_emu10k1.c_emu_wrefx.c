
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {scalar_t__ audigy; } ;


 scalar_t__ EMU_A_MICROCODEBASE ;
 scalar_t__ EMU_MICROCODEBASE ;
 int emu_wrptr (struct sc_info*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void
emu_wrefx(struct sc_info *sc, unsigned int pc, unsigned int data)
{
 pc += sc->audigy ? EMU_A_MICROCODEBASE : EMU_MICROCODEBASE;
 emu_wrptr(sc, 0, pc, data);
}
