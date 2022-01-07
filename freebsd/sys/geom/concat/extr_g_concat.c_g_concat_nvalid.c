
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct g_concat_softc {size_t sc_ndisks; TYPE_1__* sc_disks; } ;
struct TYPE_2__ {int * d_consumer; } ;



__attribute__((used)) static u_int
g_concat_nvalid(struct g_concat_softc *sc)
{
 u_int i, no;

 no = 0;
 for (i = 0; i < sc->sc_ndisks; i++) {
  if (sc->sc_disks[i].d_consumer != ((void*)0))
   no++;
 }

 return (no);
}
