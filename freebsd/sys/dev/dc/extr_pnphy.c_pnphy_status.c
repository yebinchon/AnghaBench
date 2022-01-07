
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; int mii_ifp; } ;
struct dc_softc {int dummy; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int DC_ISR ;
 int DC_ISR_LINKFAIL ;
 int DC_NETCFG ;
 int DC_NETCFG_FULLDUPLEX ;
 int DC_NETCFG_SPEEDSEL ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 struct dc_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
pnphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int reg;
 struct dc_softc *dc_sc;

 dc_sc = if_getsoftc(mii->mii_ifp);

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 reg = CSR_READ_4(dc_sc, DC_ISR);
 if (!(reg & DC_ISR_LINKFAIL))
  mii->mii_media_status |= IFM_ACTIVE;
 reg = CSR_READ_4(dc_sc, DC_NETCFG);
 if (reg & DC_NETCFG_SPEEDSEL)
  mii->mii_media_active |= IFM_10_T;
 else
  mii->mii_media_active |= IFM_100_TX;
 if (reg & DC_NETCFG_FULLDUPLEX)
  mii->mii_media_active |= IFM_FDX;
 else
  mii->mii_media_active |= IFM_HDX;
}
