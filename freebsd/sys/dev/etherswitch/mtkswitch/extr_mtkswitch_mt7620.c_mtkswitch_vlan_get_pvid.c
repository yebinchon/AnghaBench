
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;


 int MA_OWNED ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_PPBV1 (int) ;
 int PPBV_VID_FROM_REG (int) ;
 int stub1 (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static int
mtkswitch_vlan_get_pvid(struct mtkswitch_softc *sc, int port, int *pvid)
{

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);

 *pvid = sc->hal.mtkswitch_read(sc, MTKSWITCH_PPBV1(port));
 *pvid = PPBV_VID_FROM_REG(*pvid);

 return (0);
}
