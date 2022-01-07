
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct ess_info {int* dmasz; int io; int vc; } ;


 int KASSERT (int,char*) ;
 int PCMDIR_PLAY ;
 int port_wr (int ,int,int,int) ;

__attribute__((used)) static int
ess_dmasetup(struct ess_info *sc, int ch, u_int32_t base, u_int16_t cnt, int dir)
{
 KASSERT(ch == 1 || ch == 2, ("bad ch"));
 sc->dmasz[ch - 1] = cnt;
 if (ch == 1) {
  port_wr(sc->vc, 0x8, 0xc4, 1);
  port_wr(sc->vc, 0xd, 0xff, 1);
  port_wr(sc->vc, 0xf, 0x01, 1);
  port_wr(sc->vc, 0xb, dir == PCMDIR_PLAY? 0x58 : 0x54, 1);
  port_wr(sc->vc, 0x0, base, 4);
  port_wr(sc->vc, 0x4, cnt - 1, 2);

 } else if (ch == 2) {
  port_wr(sc->io, 0x6, 0x08, 1);
  port_wr(sc->io, 0x0, base, 4);
  port_wr(sc->io, 0x4, cnt, 2);
 }
 return 0;
}
