
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_capabilities; struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int mii_media_status; int mii_ifp; } ;
struct dc_softc {int dummy; } ;


 int ANLPAR_10 ;
 int ANLPAR_10_FD ;
 int ANLPAR_T4 ;
 int ANLPAR_TX ;
 int ANLPAR_TX_FD ;
 int BMSR_100T4 ;
 int BMSR_100TXFDX ;
 int BMSR_100TXHDX ;
 int CSR_READ_4 (struct dc_softc*,int ) ;
 int DC_10BTCTRL ;
 int DC_10BTSTAT ;
 int DC_ASTAT_AUTONEGCMP ;
 int DC_ASTAT_DISABLE ;
 int DC_CLRBIT (struct dc_softc*,int ,int) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 scalar_t__ DC_IS_MACRONIX (struct dc_softc*) ;
 scalar_t__ DC_IS_PNICII (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_NETCFG_FULLDUPLEX ;
 int DC_NETCFG_SPEEDSEL ;
 int DC_TCTL_AUTONEGENBL ;
 int DC_TSTAT_ANEGSTAT ;
 int DC_TSTAT_LP_CAN_NWAY ;
 int DC_TSTAT_LS10 ;
 int DC_TSTAT_LS100 ;
 int IFF_UP ;
 int IFM_100_T4 ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;
 int if_getflags (int ) ;
 struct dc_softc* if_getsoftc (int ) ;

__attribute__((used)) static void
dcphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 int anlpar, tstat;
 struct dc_softc *dc_sc;

 dc_sc = if_getsoftc(mii->mii_ifp);

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 if ((if_getflags(mii->mii_ifp) & IFF_UP) == 0)
  return;

 tstat = CSR_READ_4(dc_sc, DC_10BTSTAT);
 if (!(tstat & DC_TSTAT_LS10) || !(tstat & DC_TSTAT_LS100))
  mii->mii_media_status |= IFM_ACTIVE;

 if (CSR_READ_4(dc_sc, DC_10BTCTRL) & DC_TCTL_AUTONEGENBL) {

  if ((tstat & DC_TSTAT_ANEGSTAT) != DC_ASTAT_AUTONEGCMP) {
   if ((DC_IS_MACRONIX(dc_sc) || DC_IS_PNICII(dc_sc)) &&
       (tstat & DC_TSTAT_ANEGSTAT) == DC_ASTAT_DISABLE)
    goto skip;
   mii->mii_media_active |= IFM_NONE;
   return;
  }

  if (tstat & DC_TSTAT_LP_CAN_NWAY) {
   anlpar = tstat >> 16;
   if (anlpar & ANLPAR_TX_FD &&
       sc->mii_capabilities & BMSR_100TXFDX)
    mii->mii_media_active |= IFM_100_TX | IFM_FDX;
   else if (anlpar & ANLPAR_T4 &&
       sc->mii_capabilities & BMSR_100T4)
    mii->mii_media_active |= IFM_100_T4 | IFM_HDX;
   else if (anlpar & ANLPAR_TX &&
       sc->mii_capabilities & BMSR_100TXHDX)
    mii->mii_media_active |= IFM_100_TX | IFM_HDX;
   else if (anlpar & ANLPAR_10_FD)
    mii->mii_media_active |= IFM_10_T | IFM_FDX;
   else if (anlpar & ANLPAR_10)
    mii->mii_media_active |= IFM_10_T | IFM_HDX;
   else
    mii->mii_media_active |= IFM_NONE;
   if (DC_IS_INTEL(dc_sc))
    DC_CLRBIT(dc_sc, DC_10BTCTRL,
        DC_TCTL_AUTONEGENBL);
   return;
  }
  if (!(tstat & DC_TSTAT_LS100))
   mii->mii_media_active |= IFM_100_TX | IFM_HDX;
  else if (!(tstat & DC_TSTAT_LS10))
   mii->mii_media_active |= IFM_10_T | IFM_HDX;
  else
   mii->mii_media_active |= IFM_NONE;
  if (DC_IS_INTEL(dc_sc))
   DC_CLRBIT(dc_sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
  return;
 }

skip:
 if (CSR_READ_4(dc_sc, DC_NETCFG) & DC_NETCFG_SPEEDSEL)
  mii->mii_media_active |= IFM_10_T;
 else
  mii->mii_media_active |= IFM_100_TX;
 if (CSR_READ_4(dc_sc, DC_NETCFG) & DC_NETCFG_FULLDUPLEX)
  mii->mii_media_active |= IFM_FDX;
 else
  mii->mii_media_active |= IFM_HDX;
}
