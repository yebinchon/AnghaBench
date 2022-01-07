
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int dummy; } ;


 int emu_wr_cbptr (struct emu_sc_info*,int) ;

__attribute__((used)) static int
emu_cardbus_init(struct emu_sc_info *sc)
{






 emu_wr_cbptr(sc, (0x00d0 << 16) | 0x0000);
 emu_wr_cbptr(sc, (0x00d0 << 16) | 0x0001);
 emu_wr_cbptr(sc, (0x00d0 << 16) | 0x005f);
 emu_wr_cbptr(sc, (0x00d0 << 16) | 0x007f);

 emu_wr_cbptr(sc, (0x0090 << 16) | 0x007f);

 return (0);
}
