
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int dummy; } ;


 int EMU_SOLEH ;
 int EMU_SOLEL ;
 int emu_wrptr (struct emu_sc_info*,int ,int,int) ;

__attribute__((used)) static void
emu_vstop(struct emu_sc_info *sc, char channel, int enable)
{
 int reg;

 reg = (channel & 0x20) ? EMU_SOLEH : EMU_SOLEL;
 channel &= 0x1f;
 reg |= 1 << 24;
 reg |= channel << 16;
 emu_wrptr(sc, 0, reg, enable);
}
