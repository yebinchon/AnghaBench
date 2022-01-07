
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int emu_wrefx (struct sc_info*,int,int) ;

__attribute__((used)) static void
emu_addefxop(struct sc_info *sc, int op, int z, int w, int x, int y,
    u_int32_t *pc)
{
 emu_wrefx(sc, (*pc) * 2, (x << 10) | y);
 emu_wrefx(sc, (*pc) * 2 + 1, (op << 20) | (z << 10) | w);
 (*pc)++;
}
