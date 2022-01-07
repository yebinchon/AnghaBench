
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct le_lebuffer_softc {int sc_bres; } ;
struct lance_softc {int dummy; } ;
typedef int * caddr_t ;


 int be16dec (int *) ;
 int be32dec (int *) ;
 int be64dec (int *) ;
 int bus_write_1 (int ,int,int ) ;
 int bus_write_2 (int ,int,int ) ;
 int bus_write_4 (int ,int,int ) ;
 int bus_write_8 (int ,int,int ) ;

__attribute__((used)) static void
le_lebuffer_copytodesc(struct lance_softc *sc, void *fromv, int off, int len)
{
 struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
 caddr_t from = fromv;

 for (; len >= 8; len -= 8, off += 8, from += 8)
  bus_write_8(lesc->sc_bres, off, be64dec(from));
 for (; len >= 4; len -= 4, off += 4, from += 4)
  bus_write_4(lesc->sc_bres, off, be32dec(from));
 for (; len >= 2; len -= 2, off += 2, from += 2)
  bus_write_2(lesc->sc_bres, off, be16dec(from));
 if (len == 1)
  bus_write_1(lesc->sc_bres, off, *from);
}
