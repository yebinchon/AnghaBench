
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
typedef int kobj_t ;


 int EMU_AC97ADDR ;
 int EMU_AC97DATA ;
 int emu_rd (struct sc_info*,int ,int) ;
 int emu_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
emu_rdcd(kobj_t obj, void *devinfo, int regno)
{
 struct sc_info *sc = (struct sc_info *)devinfo;

 emu_wr(sc, EMU_AC97ADDR, regno, 1);
 return emu_rd(sc, EMU_AC97DATA, 2);
}
