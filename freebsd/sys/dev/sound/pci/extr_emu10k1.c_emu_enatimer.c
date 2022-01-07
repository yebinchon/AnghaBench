
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {scalar_t__ timer; } ;


 int EMU_INTE ;
 int EMU_INTE_INTERTIMERENB ;
 int emu_rd (struct sc_info*,int ,int) ;
 int emu_wr (struct sc_info*,int ,int ,int) ;

__attribute__((used)) static int
emu_enatimer(struct sc_info *sc, int go)
{
 u_int32_t x;
 if (go) {
  if (sc->timer++ == 0) {
   x = emu_rd(sc, EMU_INTE, 4);
   x |= EMU_INTE_INTERTIMERENB;
   emu_wr(sc, EMU_INTE, x, 4);
  }
 } else {
  sc->timer = 0;
  x = emu_rd(sc, EMU_INTE, 4);
  x &= ~EMU_INTE_INTERTIMERENB;
  emu_wr(sc, EMU_INTE, x, 4);
 }
 return 0;
}
