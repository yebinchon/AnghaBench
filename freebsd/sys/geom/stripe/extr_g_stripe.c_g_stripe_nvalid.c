
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct g_stripe_softc {size_t sc_ndisks; int ** sc_disks; } ;



__attribute__((used)) static u_int
g_stripe_nvalid(struct g_stripe_softc *sc)
{
 u_int i, no;

 no = 0;
 for (i = 0; i < sc->sc_ndisks; i++) {
  if (sc->sc_disks[i] != ((void*)0))
   no++;
 }

 return (no);
}
