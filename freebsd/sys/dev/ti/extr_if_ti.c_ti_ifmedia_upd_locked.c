
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifmedia {int ifm_media; } ;
struct ti_softc {int ti_hwrev; struct ifmedia ifmedia; } ;
struct ti_cmd_desc {int dummy; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 int EINVAL ;







 scalar_t__ IFM_ETHER ;
 int IFM_FDX ;
 int IFM_GMASK ;
 int const IFM_SUBTYPE (int) ;
 scalar_t__ IFM_TYPE (int) ;
 int TI_CMD_CODE_NEGOTIATE_10_100 ;
 int TI_CMD_CODE_NEGOTIATE_BOTH ;
 int TI_CMD_CODE_NEGOTIATE_GIGABIT ;
 int TI_CMD_LINK_NEGOTIATION ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_GCR_GLINK ;
 int TI_GCR_LINK ;
 int TI_GLNK_1000MB ;
 int TI_GLNK_AUTONEGENB ;
 int TI_GLNK_ENB ;
 int TI_GLNK_FULL_DUPLEX ;
 int TI_GLNK_PREF ;
 int TI_GLNK_RX_FLOWCTL_Y ;
 int TI_GLNK_TX_FLOWCTL_Y ;
 int TI_HWREV_TIGON ;
 int TI_LNK_100MB ;
 int TI_LNK_10MB ;
 int TI_LNK_AUTONEGENB ;
 int TI_LNK_ENB ;
 int TI_LNK_FULL_DUPLEX ;
 int TI_LNK_HALF_DUPLEX ;
 int TI_LNK_PREF ;
 int TI_LNK_RX_FLOWCTL_Y ;
 int TI_LNK_TX_FLOWCTL_Y ;
 int TI_SETBIT (struct ti_softc*,int ,int) ;

__attribute__((used)) static int
ti_ifmedia_upd_locked(struct ti_softc *sc)
{
 struct ifmedia *ifm;
 struct ti_cmd_desc cmd;
 uint32_t flowctl;

 ifm = &sc->ifmedia;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);

 flowctl = 0;

 switch (IFM_SUBTYPE(ifm->ifm_media)) {
 case 128:



  flowctl = TI_GLNK_RX_FLOWCTL_Y;
  CSR_WRITE_4(sc, TI_GCR_GLINK, TI_GLNK_PREF|TI_GLNK_1000MB|
      TI_GLNK_FULL_DUPLEX| flowctl |
      TI_GLNK_AUTONEGENB|TI_GLNK_ENB);

  flowctl = TI_LNK_RX_FLOWCTL_Y;





  CSR_WRITE_4(sc, TI_GCR_LINK, TI_LNK_100MB|TI_LNK_10MB|
      TI_LNK_FULL_DUPLEX|TI_LNK_HALF_DUPLEX| flowctl |
      TI_LNK_AUTONEGENB|TI_LNK_ENB);
  TI_DO_CMD(TI_CMD_LINK_NEGOTIATION,
      TI_CMD_CODE_NEGOTIATE_BOTH, 0);
  break;
 case 134:
 case 133:
  flowctl = TI_GLNK_RX_FLOWCTL_Y;





  CSR_WRITE_4(sc, TI_GCR_GLINK, TI_GLNK_PREF|TI_GLNK_1000MB|
      flowctl |TI_GLNK_ENB);
  CSR_WRITE_4(sc, TI_GCR_LINK, 0);
  if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX) {
   TI_SETBIT(sc, TI_GCR_GLINK, TI_GLNK_FULL_DUPLEX);
  }
  TI_DO_CMD(TI_CMD_LINK_NEGOTIATION,
      TI_CMD_CODE_NEGOTIATE_GIGABIT, 0);
  break;
 case 132:
 case 130:
 case 131:
 case 129:
  flowctl = TI_LNK_RX_FLOWCTL_Y;





  CSR_WRITE_4(sc, TI_GCR_GLINK, 0);
  CSR_WRITE_4(sc, TI_GCR_LINK, TI_LNK_ENB|TI_LNK_PREF|flowctl);
  if (IFM_SUBTYPE(ifm->ifm_media) == 132 ||
      IFM_SUBTYPE(ifm->ifm_media) == 131) {
   TI_SETBIT(sc, TI_GCR_LINK, TI_LNK_100MB);
  } else {
   TI_SETBIT(sc, TI_GCR_LINK, TI_LNK_10MB);
  }
  if ((ifm->ifm_media & IFM_GMASK) == IFM_FDX) {
   TI_SETBIT(sc, TI_GCR_LINK, TI_LNK_FULL_DUPLEX);
  } else {
   TI_SETBIT(sc, TI_GCR_LINK, TI_LNK_HALF_DUPLEX);
  }
  TI_DO_CMD(TI_CMD_LINK_NEGOTIATION,
      TI_CMD_CODE_NEGOTIATE_10_100, 0);
  break;
 }

 return (0);
}
