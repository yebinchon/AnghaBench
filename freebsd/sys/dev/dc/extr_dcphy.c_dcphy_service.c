
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mii_softc {int mii_ticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_ifp; int mii_media_active; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;
struct dc_softc {int dummy; } ;


 void* CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_10BTCTRL ;
 int DC_10BTSTAT ;
 int DC_CLRBIT (struct dc_softc*,int ,int) ;
 int DC_NETCFG ;
 int DC_NETCFG_FULLDUPLEX ;
 int DC_NETCFG_PCS ;
 int DC_NETCFG_PORTSEL ;
 int DC_NETCFG_SCRAMBLER ;
 int DC_NETCFG_SPEEDSEL ;
 int DC_SETBIT (struct dc_softc*,int ,int) ;
 int DC_SIARESET ;
 int DC_SIA_RESET ;
 int DC_TCTL_AUTONEGENBL ;
 int DC_TSTAT_LS10 ;
 int DC_TSTAT_LS100 ;
 int EINVAL ;
 int IFF_UP ;



 int IFM_FDX ;
 int IFM_NONE ;
 int const IFM_SUBTYPE (int) ;



 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int dcphy_auto (struct mii_softc*) ;
 int if_getflags (int ) ;
 struct dc_softc* if_getsoftc (int ) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
dcphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct dc_softc *dc_sc;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg;
 u_int32_t mode;

 dc_sc = if_getsoftc(mii->mii_ifp);

 switch (cmd) {
 case 129:
  break;

 case 130:



  if ((if_getflags(mii->mii_ifp) & IFF_UP) == 0)
   break;

  mii->mii_media_active = IFM_NONE;
  mode = CSR_READ_4(dc_sc, DC_NETCFG);
  mode &= ~(DC_NETCFG_FULLDUPLEX | DC_NETCFG_PORTSEL |
      DC_NETCFG_PCS | DC_NETCFG_SCRAMBLER | DC_NETCFG_SPEEDSEL);

  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:

   (void)dcphy_auto(sc);
   break;
  case 133:
   PHY_RESET(sc);
   DC_CLRBIT(dc_sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
   mode |= DC_NETCFG_PORTSEL | DC_NETCFG_PCS |
       DC_NETCFG_SCRAMBLER;
   if ((ife->ifm_media & IFM_FDX) != 0)
    mode |= DC_NETCFG_FULLDUPLEX;
   else
    mode &= ~DC_NETCFG_FULLDUPLEX;
   CSR_WRITE_4(dc_sc, DC_NETCFG, mode);
   break;
  case 132:
   DC_CLRBIT(dc_sc, DC_SIARESET, DC_SIA_RESET);
   DC_CLRBIT(dc_sc, DC_10BTCTRL, 0xFFFF);
   if ((ife->ifm_media & IFM_FDX) != 0)
    DC_SETBIT(dc_sc, DC_10BTCTRL, 0x7F3D);
   else
    DC_SETBIT(dc_sc, DC_10BTCTRL, 0x7F3F);
   DC_SETBIT(dc_sc, DC_SIARESET, DC_SIA_RESET);
   DC_CLRBIT(dc_sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
   mode &= ~DC_NETCFG_PORTSEL;
   mode |= DC_NETCFG_SPEEDSEL;
   if ((ife->ifm_media & IFM_FDX) != 0)
    mode |= DC_NETCFG_FULLDUPLEX;
   else
    mode &= ~DC_NETCFG_FULLDUPLEX;
   CSR_WRITE_4(dc_sc, DC_NETCFG, mode);
   break;
  default:
   return (EINVAL);
  }
  break;

 case 128:



  if ((if_getflags(mii->mii_ifp) & IFF_UP) == 0)
   return (0);




  if (IFM_SUBTYPE(ife->ifm_media) != 131)
   break;

  reg = CSR_READ_4(dc_sc, DC_10BTSTAT);
  if (!(reg & DC_TSTAT_LS10) || !(reg & DC_TSTAT_LS100))
   break;
                if (++sc->mii_ticks <= 50)
   break;

  sc->mii_ticks = 0;
  dcphy_auto(sc);

  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
