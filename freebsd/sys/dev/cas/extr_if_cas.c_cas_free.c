
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {scalar_t__ ext_arg2; struct cas_softc* ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;
struct cas_softc {struct cas_rxdsoft* sc_rxdsoft; } ;
struct cas_rxdsoft {int rxds_refcount; } ;


 int CAS_LOCK (struct cas_softc*) ;
 size_t CAS_LOCK_OWNED (struct cas_softc*) ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int cas_add_rxdesc (struct cas_softc*,size_t) ;
 scalar_t__ refcount_release (int *) ;

__attribute__((used)) static void
cas_free(struct mbuf *m)
{
 struct cas_rxdsoft *rxds;
 struct cas_softc *sc;
 u_int idx, locked;

 sc = m->m_ext.ext_arg1;
 idx = (uintptr_t)m->m_ext.ext_arg2;
 rxds = &sc->sc_rxdsoft[idx];
 if (refcount_release(&rxds->rxds_refcount) == 0)
  return;





 if ((locked = CAS_LOCK_OWNED(sc)) == 0)
  CAS_LOCK(sc);
 cas_add_rxdesc(sc, idx);
 if (locked == 0)
  CAS_UNLOCK(sc);
}
