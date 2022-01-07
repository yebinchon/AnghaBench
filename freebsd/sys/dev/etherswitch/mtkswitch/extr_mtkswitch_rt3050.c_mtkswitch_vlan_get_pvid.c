
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int dummy; } ;


 int MA_OWNED ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_PVID (int) ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int PVID_MASK ;
 int PVID_OFF (int) ;

__attribute__((used)) static int
mtkswitch_vlan_get_pvid(struct mtkswitch_softc *sc, int port, int *pvid)
{

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 *pvid = (MTKSWITCH_READ(sc, MTKSWITCH_PVID(port)) >> PVID_OFF(port)) &
     PVID_MASK;

 return (0);
}
