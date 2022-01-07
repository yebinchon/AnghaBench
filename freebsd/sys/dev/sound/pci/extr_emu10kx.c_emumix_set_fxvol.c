
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int dummy; } ;
typedef int int32_t ;


 int emumix_set_gpr (struct emu_sc_info*,unsigned int,int ) ;
 int log2lin (int ) ;

void
emumix_set_fxvol(struct emu_sc_info *sc, unsigned gpr, int32_t vol)
{

 vol = log2lin(vol);
 emumix_set_gpr(sc, gpr, vol);
}
