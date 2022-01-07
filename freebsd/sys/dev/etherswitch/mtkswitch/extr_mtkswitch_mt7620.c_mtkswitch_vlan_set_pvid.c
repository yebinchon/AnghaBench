
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;


 int MA_OWNED ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_PPBV1 (int) ;
 int MTKSWITCH_PPBV2 (int) ;
 int PPBV_VID (int) ;
 int PPBV_VID_MASK ;
 int stub1 (struct mtkswitch_softc*,int ,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int ) ;

__attribute__((used)) static int
mtkswitch_vlan_set_pvid(struct mtkswitch_softc *sc, int port, int pvid)
{
 uint32_t val;

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 val = PPBV_VID(pvid & PPBV_VID_MASK);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_PPBV1(port), val);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_PPBV2(port), val);

 return (0);
}
