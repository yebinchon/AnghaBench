
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct le_lebuffer_softc {int sc_bres; } ;
struct lance_softc {int dummy; } ;


 int bus_write_1 (int ,int,int ) ;
 int bus_write_2 (int ,int,int ) ;

__attribute__((used)) static void
le_lebuffer_zerobuf(struct lance_softc *sc, int off, int len)
{
 struct le_lebuffer_softc *lesc = (struct le_lebuffer_softc *)sc;

 for (; len >= 2; len -= 2, off += 2)
  bus_write_2(lesc->sc_bres, off, 0);
 if (len == 1)
  bus_write_1(lesc->sc_bres, off + 1, 0);
}
