
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* mtkswitch_vlan_get_pvid ) (struct mtkswitch_softc*,int ,int *) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {int es_flags; int es_port; int es_pvid; } ;
typedef TYPE_2__ etherswitch_port_t ;


 int ETHERSWITCH_PORT_ADDTAG ;
 int ETHERSWITCH_PORT_DOUBLE_TAG ;
 int ETHERSWITCH_PORT_STRIPTAG ;
 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_POC2 ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_SGC2 ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 int POC2_UNTAG_PORT (int ) ;
 int SGC2_DOUBLE_TAG_PORT (int ) ;
 int stub1 (struct mtkswitch_softc*,int ,int *) ;

__attribute__((used)) static int
mtkswitch_port_vlan_get(struct mtkswitch_softc *sc, etherswitch_port_t *p)
{
 uint32_t val;

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);


 sc->hal.mtkswitch_vlan_get_pvid(sc, p->es_port, &p->es_pvid);


 p->es_flags = 0;
 val = MTKSWITCH_READ(sc, MTKSWITCH_SGC2);
 if (val & SGC2_DOUBLE_TAG_PORT(p->es_port))
  p->es_flags |= ETHERSWITCH_PORT_DOUBLE_TAG;

 val = MTKSWITCH_READ(sc, MTKSWITCH_POC2);
 if (val & POC2_UNTAG_PORT(p->es_port))
  p->es_flags |= ETHERSWITCH_PORT_STRIPTAG;
 else
  p->es_flags |= ETHERSWITCH_PORT_ADDTAG;

 MTKSWITCH_UNLOCK(sc);

 return (0);
}
