
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_capabilities; TYPE_1__* mii_pdata; } ;
struct dc_softc {int dummy; } ;
struct TYPE_2__ {int mii_ifp; } ;


 int BMSR_100TXHDX ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_10BTCTRL ;
 int DC_10BTSTAT ;
 int DC_ASTAT_TXDISABLE ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_NETCFG ;
 int DC_NETCFG_FULLDUPLEX ;
 int DC_NETCFG_PORTSEL ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIARESET ;
 int DC_SIA_RESET ;
 int DC_TCTL_AUTONEGENBL ;
 int EJUSTRETURN ;
 struct dc_softc* if_getsoftc (int ) ;

__attribute__((used)) static int
dcphy_auto(struct mii_softc *mii)
{
 struct dc_softc *sc;

 sc = if_getsoftc(mii->mii_pdata->mii_ifp);

 DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_PORTSEL);
 DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_FULLDUPLEX);
 DC_CLRBIT(sc, DC_SIARESET, DC_SIA_RESET);
 if (mii->mii_capabilities & BMSR_100TXHDX)
  CSR_WRITE_4(sc, DC_10BTCTRL, 0x3FFFF);
 else
  CSR_WRITE_4(sc, DC_10BTCTRL, 0xFFFF);
 DC_SETBIT(sc, DC_SIARESET, DC_SIA_RESET);
 DC_SETBIT(sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
 DC_SETBIT(sc, DC_10BTSTAT, DC_ASTAT_TXDISABLE);

 return (EJUSTRETURN);
}
