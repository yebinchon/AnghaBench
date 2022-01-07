
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int pbanksize; scalar_t__ pbankbase; int * pbase; } ;


 int wrl (struct sc_info*,int *,scalar_t__) ;

__attribute__((used)) static void
ds_enapslot(struct sc_info *sc, int slot, int go)
{
 wrl(sc, &sc->pbase[slot + 1], go? (sc->pbankbase + 2 * slot * sc->pbanksize) : 0);

}
