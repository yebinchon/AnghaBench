
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {scalar_t__ code_base; } ;


 int emu_wrptr (struct emu_sc_info*,int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void
emu_wrefx(struct emu_sc_info *sc, unsigned int pc, unsigned int data)
{
 emu_wrptr(sc, 0, sc->code_base + pc, data);
}
