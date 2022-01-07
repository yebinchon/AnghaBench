
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct hme_softc {scalar_t__* sc_phys; TYPE_3__* sc_mii; } ;
struct TYPE_5__ {TYPE_1__* ifm_cur; } ;
struct TYPE_6__ {TYPE_2__ mii_media; } ;
struct TYPE_4__ {int ifm_media; } ;


 int HME_MACI_XIF ;
 int HME_MAC_READ_4 (struct hme_softc*,int ) ;
 int HME_MAC_WRITE_4 (struct hme_softc*,int ,int ) ;
 int HME_MAC_XIF_MIIENABLE ;
 int HME_MIFI_CFG ;
 int HME_MIF_WRITE_4 (struct hme_softc*,int ,int ) ;
 scalar_t__ HME_PHYAD_EXTERNAL ;
 size_t IFM_INST (int ) ;

__attribute__((used)) static void
hme_mifinit(struct hme_softc *sc)
{
 u_int32_t v;





 HME_MIF_WRITE_4(sc, HME_MIFI_CFG, 0);







 v = HME_MAC_READ_4(sc, HME_MACI_XIF);
 if (sc->sc_mii != ((void*)0) && sc->sc_mii->mii_media.ifm_cur != ((void*)0) &&
     sc->sc_phys[IFM_INST(sc->sc_mii->mii_media.ifm_cur->ifm_media)] ==
     HME_PHYAD_EXTERNAL)
  v |= HME_MAC_XIF_MIIENABLE;
 else
  v &= ~HME_MAC_XIF_MIIENABLE;
 HME_MAC_WRITE_4(sc, HME_MACI_XIF, v);
}
