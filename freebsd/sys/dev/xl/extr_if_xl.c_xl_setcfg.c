
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct xl_softc {int xl_media; } ;


 int CSR_READ_4 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct xl_softc*,int ,int) ;
 int XL_CMD_COAX_STOP ;
 int XL_COMMAND ;
 int XL_ICFG_CONNECTOR_BITS ;
 int XL_ICFG_CONNECTOR_MASK ;
 int XL_MEDIAOPT_BT4 ;
 int XL_MEDIAOPT_BTX ;
 int XL_MEDIAOPT_MII ;
 int XL_SEL_WIN (int) ;
 int XL_W3_INTERNAL_CFG ;
 int XL_XCVR_AUTO ;
 int XL_XCVR_MII ;

__attribute__((used)) static void
xl_setcfg(struct xl_softc *sc)
{
 u_int32_t icfg;



 XL_SEL_WIN(3);
 icfg = CSR_READ_4(sc, XL_W3_INTERNAL_CFG);
 icfg &= ~XL_ICFG_CONNECTOR_MASK;
 if (sc->xl_media & XL_MEDIAOPT_MII ||
  sc->xl_media & XL_MEDIAOPT_BT4)
  icfg |= (XL_XCVR_MII << XL_ICFG_CONNECTOR_BITS);
 if (sc->xl_media & XL_MEDIAOPT_BTX)
  icfg |= (XL_XCVR_AUTO << XL_ICFG_CONNECTOR_BITS);

 CSR_WRITE_4(sc, XL_W3_INTERNAL_CFG, icfg);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_COAX_STOP);
}
