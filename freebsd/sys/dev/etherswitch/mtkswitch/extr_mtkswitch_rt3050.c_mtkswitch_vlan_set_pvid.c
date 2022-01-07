
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtkswitch_softc {int dummy; } ;


 int MA_OWNED ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_PVID (int) ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int) ;
 int PVID_MASK ;
 int PVID_OFF (int) ;

__attribute__((used)) static int
mtkswitch_vlan_set_pvid(struct mtkswitch_softc *sc, int port, int pvid)
{
 uint32_t val;

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 val = MTKSWITCH_READ(sc, MTKSWITCH_PVID(port));
 val &= ~(PVID_MASK << PVID_OFF(port));
 val |= (pvid & PVID_MASK) << PVID_OFF(port);
 MTKSWITCH_WRITE(sc, MTKSWITCH_PVID(port), val);

 return (0);
}
