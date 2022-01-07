
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct le_lebuffer_softc {int sc_bres; } ;
struct lance_softc {int dummy; } ;
typedef int * caddr_t ;


 int be16enc (int *,int ) ;
 int be32enc (int *,int ) ;
 int be64enc (int *,int ) ;
 int bus_read_1 (int ,int) ;
 int bus_read_2 (int ,int) ;
 int bus_read_4 (int ,int) ;
 int bus_read_8 (int ,int) ;

__attribute__((used)) static void
le_lebuffer_copyfromdesc(struct lance_softc *sc, void *tov, int off, int len)
{
 struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
 caddr_t to = tov;

 for (; len >= 8; len -= 8, off += 8, to += 8)
  be64enc(to,
      bus_read_8(lesc->sc_bres, off));
 for (; len >= 4; len -= 4, off += 4, to += 4)
  be32enc(to,
      bus_read_4(lesc->sc_bres, off));
 for (; len >= 2; len -= 2, off += 2, to += 2)
  be16enc(to,
      bus_read_2(lesc->sc_bres, off));
 if (len == 1)
  *to = bus_read_1(lesc->sc_bres, off);
}
