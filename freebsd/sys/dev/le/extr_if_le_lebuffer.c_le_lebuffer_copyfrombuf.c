
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct le_lebuffer_softc {int sc_bres; } ;
struct lance_softc {int dummy; } ;
typedef int * caddr_t ;


 int bus_read_1 (int ,int) ;
 int bus_read_2 (int ,int) ;
 int le16enc (int *,int ) ;

__attribute__((used)) static void
le_lebuffer_copyfrombuf(struct lance_softc *sc, void *tov, int off, int len)
{
 struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;
 caddr_t to = tov;

 for (; len >= 2; len -= 2, off += 2, to += 2)
  le16enc(to,
      bus_read_2(lesc->sc_bres, off));
 if (len == 1)
  *to = bus_read_1(lesc->sc_bres, off + 1);
}
