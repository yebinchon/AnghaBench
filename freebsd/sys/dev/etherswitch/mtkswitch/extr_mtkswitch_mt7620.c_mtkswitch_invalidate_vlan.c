
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;


 int MTKSWITCH_VTCR ;
 int VTCR_BUSY ;
 int VTCR_FUNC_VID_INVALID ;
 int VTCR_VID_MASK ;
 int stub1 (struct mtkswitch_softc*,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int) ;
 int stub3 (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static void
mtkswitch_invalidate_vlan(struct mtkswitch_softc *sc, uint32_t vid)
{

 while (sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR) & VTCR_BUSY);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_VTCR, VTCR_BUSY |
     VTCR_FUNC_VID_INVALID | (vid & VTCR_VID_MASK));
 while (sc->hal.mtkswitch_read(sc, MTKSWITCH_VTCR) & VTCR_BUSY);
}
