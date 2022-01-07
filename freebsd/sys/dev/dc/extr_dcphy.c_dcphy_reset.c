
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {TYPE_1__* mii_pdata; } ;
struct dc_softc {int dummy; } ;
struct TYPE_2__ {int mii_ifp; } ;


 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIARESET ;
 int DC_SIA_RESET ;
 int DELAY (int) ;
 struct dc_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
dcphy_reset(struct mii_softc *mii)
{
 struct dc_softc *sc;

 sc = if_getsoftc(mii->mii_pdata->mii_ifp);

 DC_CLRBIT(sc, DC_SIARESET, DC_SIA_RESET);
 DELAY(1000);
 DC_SETBIT(sc, DC_SIARESET, DC_SIA_RESET);
}
