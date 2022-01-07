
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safe_softc {scalar_t__ sc_nqchip; struct safe_ringentry* sc_back; struct safe_ringentry* sc_ring; struct safe_ringentry* sc_ringtop; struct safe_ringentry* sc_front; } ;
struct TYPE_2__ {scalar_t__ d_csr; } ;
struct safe_ringentry {TYPE_1__ re_desc; } ;


 int safe_free_entry (struct safe_softc*,struct safe_ringentry*) ;

__attribute__((used)) static void
safe_cleanchip(struct safe_softc *sc)
{

 if (sc->sc_nqchip != 0) {
  struct safe_ringentry *re = sc->sc_back;

  while (re != sc->sc_front) {
   if (re->re_desc.d_csr != 0)
    safe_free_entry(sc, re);
   if (++re == sc->sc_ringtop)
    re = sc->sc_ring;
  }
  sc->sc_back = re;
  sc->sc_nqchip = 0;
 }
}
