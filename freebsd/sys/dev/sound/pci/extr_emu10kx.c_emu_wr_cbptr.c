
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct emu_sc_info {int dummy; } ;


 int emu_rd_nolock (struct emu_sc_info*,int,int) ;
 int emu_wr_nolock (struct emu_sc_info*,int,int ,int) ;

__attribute__((used)) static void
emu_wr_cbptr(struct emu_sc_info *sc, uint32_t data)
{
 uint32_t val;







 val = emu_rd_nolock(sc, 0x38, 4);
 emu_wr_nolock(sc, 0x38, data, 4);
 val = emu_rd_nolock(sc, 0x38, 4);

}
