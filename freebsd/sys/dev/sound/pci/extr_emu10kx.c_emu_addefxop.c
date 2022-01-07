
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int code_size; unsigned int high_operand_shift; unsigned int opcode_shift; int dev; } ;


 int device_printf (int ,char*,int) ;
 int emu_wrefx (struct emu_sc_info*,int,unsigned int) ;

__attribute__((used)) static void
emu_addefxop(struct emu_sc_info *sc, unsigned int op, unsigned int z, unsigned int w, unsigned int x, unsigned int y, uint32_t * pc)
{
 if ((*pc) + 1 > sc->code_size) {
  device_printf(sc->dev, "DSP CODE OVERRUN: attept to write past code_size (pc=%d)\n", (*pc));
  return;
 }
 emu_wrefx(sc, (*pc) * 2, (x << sc->high_operand_shift) | y);
 emu_wrefx(sc, (*pc) * 2 + 1, (op << sc->opcode_shift) | (z << sc->high_operand_shift) | w);
 (*pc)++;
}
