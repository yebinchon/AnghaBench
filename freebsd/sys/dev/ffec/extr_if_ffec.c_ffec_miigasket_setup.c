
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ffec_softc {int fectype; int phy_conn_type; } ;



 int FEC_MIIGSK_CFGR ;
 scalar_t__ FEC_MIIGSK_CFGR_IF_MODE_RMII ;
 int FEC_MIIGSK_ENR ;
 scalar_t__ FEC_MIIGSK_ENR_EN ;
 int FEC_MIIGSK_ENR_READY ;


 int RD2 (struct ffec_softc*,int ) ;
 int WR2 (struct ffec_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
ffec_miigasket_setup(struct ffec_softc *sc)
{
 uint32_t ifmode;





 switch (sc->fectype)
 {
 case 130:
  break;
 default:
  return;
 }

 switch (sc->phy_conn_type)
 {
 case 129:
  ifmode = 0;
  break;
 case 128:
  ifmode = FEC_MIIGSK_CFGR_IF_MODE_RMII;
  break;
 default:
  return;
 }





 WR2(sc, FEC_MIIGSK_ENR, 0);
 while (RD2(sc, FEC_MIIGSK_ENR) & FEC_MIIGSK_ENR_READY)
  continue;

 WR2(sc, FEC_MIIGSK_CFGR, ifmode);

 WR2(sc, FEC_MIIGSK_ENR, FEC_MIIGSK_ENR_EN);
 while (!(RD2(sc, FEC_MIIGSK_ENR) & FEC_MIIGSK_ENR_READY))
  continue;
}
