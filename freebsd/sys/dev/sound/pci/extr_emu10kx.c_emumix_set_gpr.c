
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu_sc_info {int dbg_level; int dev; } ;
typedef int int32_t ;


 int GPR (unsigned int) ;
 int device_printf (int ,char*) ;
 int emu_wrptr (struct emu_sc_info*,int ,int ,int ) ;
 int kdb_backtrace () ;

void
emumix_set_gpr(struct emu_sc_info *sc, unsigned gpr, int32_t val)
{
 if (sc->dbg_level > 1)
  if (gpr == 0) {
   device_printf(sc->dev, "Zero gpr write access\n");



   return;
   }

 emu_wrptr(sc, 0, GPR(gpr), val);
}
