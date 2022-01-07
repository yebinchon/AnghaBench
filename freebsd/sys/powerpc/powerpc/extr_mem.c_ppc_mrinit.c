
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int mr_ndesc; int mr_desc; scalar_t__ mr_cap; } ;
struct mem_range_desc {int dummy; } ;


 int M_MEMDESC ;
 int M_WAITOK ;
 int M_ZERO ;
 int malloc (int,int ,int) ;

__attribute__((used)) static void
ppc_mrinit(struct mem_range_softc *sc)
{
 sc->mr_cap = 0;
 sc->mr_ndesc = 8;
 sc->mr_desc = malloc(sc->mr_ndesc * sizeof(struct mem_range_desc),
     M_MEMDESC, M_WAITOK | M_ZERO);
}
