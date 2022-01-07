
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct syncache {int sc_label; scalar_t__ sc_cred; scalar_t__ sc_ipopts; } ;
struct TYPE_2__ {int zone; } ;


 TYPE_1__ V_tcp_syncache ;
 int crfree (scalar_t__) ;
 int m_free (scalar_t__) ;
 int mac_syncache_destroy (int *) ;
 int uma_zfree (int ,struct syncache*) ;

__attribute__((used)) static void
syncache_free(struct syncache *sc)
{

 if (sc->sc_ipopts)
  (void) m_free(sc->sc_ipopts);
 if (sc->sc_cred)
  crfree(sc->sc_cred);




 uma_zfree(V_tcp_syncache.zone, sc);
}
