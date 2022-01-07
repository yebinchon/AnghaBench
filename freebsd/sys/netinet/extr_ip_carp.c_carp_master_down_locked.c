
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carp_softc {int sc_state; TYPE_1__* sc_carpdev; int sc_vhid; } ;
struct TYPE_2__ {int if_xname; } ;



 int CARP_LOCK_ASSERT (struct carp_softc*) ;


 int carp_addroute (struct carp_softc*) ;
 int carp_send_ad_locked (struct carp_softc*) ;
 int carp_send_arp (struct carp_softc*) ;
 int carp_send_na (struct carp_softc*) ;
 int carp_set_state (struct carp_softc*,int,char const*) ;
 int carp_setrun (struct carp_softc*,int ) ;
 int panic (char*,int ,int ,char*) ;

__attribute__((used)) static void
carp_master_down_locked(struct carp_softc *sc, const char *reason)
{

 CARP_LOCK_ASSERT(sc);

 switch (sc->sc_state) {
 case 130:
  carp_set_state(sc, 128, reason);
  carp_send_ad_locked(sc);






  carp_setrun(sc, 0);
  carp_addroute(sc);
  break;
 case 129:
 case 128:






  break;
 }
}
