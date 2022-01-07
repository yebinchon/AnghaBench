
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_active; } ;
struct cgem_softc {int mii_media_active; int ref_clk_num; int dev; } ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int CGEM_NET_CFG ;
 int CGEM_NET_CFG_FULL_DUPLEX ;
 int CGEM_NET_CFG_GIGE_EN ;
 int CGEM_NET_CFG_SPEED100 ;


 int IFM_FDX ;
 int IFM_SUBTYPE (int) ;
 int RD4 (struct cgem_softc*,int ) ;
 int WR4 (struct cgem_softc*,int ,int) ;
 scalar_t__ cgem_set_ref_clk (int ,int) ;
 int device_printf (int ,char*,int ,int) ;

__attribute__((used)) static void
cgem_mediachange(struct cgem_softc *sc, struct mii_data *mii)
{
 uint32_t net_cfg;
 int ref_clk_freq;

 CGEM_ASSERT_LOCKED(sc);


 net_cfg = RD4(sc, CGEM_NET_CFG);
 net_cfg &= ~(CGEM_NET_CFG_SPEED100 | CGEM_NET_CFG_GIGE_EN |
       CGEM_NET_CFG_FULL_DUPLEX);

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 129:
  net_cfg |= (CGEM_NET_CFG_SPEED100 |
       CGEM_NET_CFG_GIGE_EN);
  ref_clk_freq = 125000000;
  break;
 case 128:
  net_cfg |= CGEM_NET_CFG_SPEED100;
  ref_clk_freq = 25000000;
  break;
 default:
  ref_clk_freq = 2500000;
 }

 if ((mii->mii_media_active & IFM_FDX) != 0)
  net_cfg |= CGEM_NET_CFG_FULL_DUPLEX;

 WR4(sc, CGEM_NET_CFG, net_cfg);


 if (cgem_set_ref_clk(sc->ref_clk_num, ref_clk_freq))
  device_printf(sc->dev, "cgem_mediachange: "
         "could not set ref clk%d to %d.\n",
         sc->ref_clk_num, ref_clk_freq);

 sc->mii_media_active = mii->mii_media_active;
}
