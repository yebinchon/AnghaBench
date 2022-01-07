
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int* dmasz; int io; int vc; } ;


 int DELAY (int) ;
 int KASSERT (int,char*) ;
 int ess_dmatrigger (struct ess_info*,int,int) ;
 int port_rd (int ,int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
ess_dmapos(struct ess_info *sc, int ch)
{
 int p = 0, i = 0, j = 0;

 KASSERT(ch == 1 || ch == 2, ("bad ch"));
 if (ch == 1) {
  ess_dmatrigger(sc, ch, 0);
  DELAY(20);
  do {
   DELAY(10);
   if (j > 1)
    printf("DMA count reg bogus: %04x & %04x\n",
     i, p);
   i = port_rd(sc->vc, 0x4, 2) + 1;
   p = port_rd(sc->vc, 0x4, 2) + 1;
  } while ((p > sc->dmasz[ch - 1] || i < p || (p - i) > 0x8) && j++ < 1000);
  ess_dmatrigger(sc, ch, 1);
 }
 else if (ch == 2)
  p = port_rd(sc->io, 0x4, 2);
 return sc->dmasz[ch - 1] - p;
}
