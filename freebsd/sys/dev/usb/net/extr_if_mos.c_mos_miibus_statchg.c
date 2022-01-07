
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mos_softc {int sc_mtx; } ;
struct mii_data {int mii_media_active; } ;
typedef int device_t ;


 struct mii_data* GET_MII (struct mos_softc*) ;


 int IFM_FDX ;
 int IFM_GMASK ;
 int IFM_SUBTYPE (int) ;
 int MOS_CTL ;
 int MOS_CTL_FDX_ENB ;
 int MOS_CTL_RX_ENB ;
 int MOS_CTL_SPEEDSEL ;
 int MOS_CTL_TX_ENB ;
 int MOS_DPRINTFN (char*) ;
 int MOS_FRAME_DROP_CNT ;
 int MOS_LOCK (struct mos_softc*) ;
 int MOS_UNLOCK (struct mos_softc*) ;
 struct mos_softc* device_get_softc (int ) ;
 int mos_reg_read_1 (struct mos_softc*,int ) ;
 int mos_reg_write_1 (struct mos_softc*,int ,int) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void
mos_miibus_statchg(device_t dev)
{
 struct mos_softc *sc = device_get_softc(dev);
 struct mii_data *mii = GET_MII(sc);
 int val, err, locked;

 locked = mtx_owned(&sc->sc_mtx);
 if (!locked)
  MOS_LOCK(sc);


 val = mos_reg_read_1(sc, MOS_CTL);
 val &= ~(MOS_CTL_TX_ENB | MOS_CTL_RX_ENB);
 mos_reg_write_1(sc, MOS_CTL, val);


 mos_reg_write_1(sc, MOS_FRAME_DROP_CNT, 0);

 if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
  val |= MOS_CTL_FDX_ENB;
 else
  val &= ~(MOS_CTL_FDX_ENB);

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 129:
  val |= MOS_CTL_SPEEDSEL;
  break;
 case 128:
  val &= ~(MOS_CTL_SPEEDSEL);
  break;
 }


 val |= (MOS_CTL_TX_ENB | MOS_CTL_RX_ENB);
 err = mos_reg_write_1(sc, MOS_CTL, val);

 if (err)
  MOS_DPRINTFN("media change failed");

 if (!locked)
  MOS_UNLOCK(sc);
}
