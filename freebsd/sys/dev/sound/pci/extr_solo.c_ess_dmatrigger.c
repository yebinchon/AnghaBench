
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int io; int vc; } ;


 int KASSERT (int,char*) ;
 int port_wr (int ,int,int,int) ;

__attribute__((used)) static int
ess_dmatrigger(struct ess_info *sc, int ch, int go)
{
 KASSERT(ch == 1 || ch == 2, ("bad ch"));
 if (ch == 1)
  port_wr(sc->vc, 0xf, go? 0x00 : 0x01, 1);
 else if (ch == 2)
  port_wr(sc->io, 0x6, 0x08 | (go? 0x02 : 0x00), 1);
 return 0;
}
