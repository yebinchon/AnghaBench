
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vge_softc {int vge_dev; int vge_miibus; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int CSR_CLRBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_SETBIT_1 (struct vge_softc*,int ,int ) ;




 int IFM_FDX ;
 int IFM_GMASK ;
 int IFM_SUBTYPE (int) ;
 int VGE_DIAGCTL ;
 int VGE_DIAGCTL_FDXFORCE ;
 int VGE_DIAGCTL_MACFORCE ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
vge_setmedia(struct vge_softc *sc)
{
 struct mii_data *mii;
 struct ifmedia_entry *ife;

 mii = device_get_softc(sc->vge_miibus);
 ife = mii->mii_media.ifm_cur;
 switch (IFM_SUBTYPE(ife->ifm_media)) {
 case 128:
  CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
  CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
  break;
 case 131:
  CSR_SETBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
  CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
  break;
 case 130:
 case 129:
  CSR_SETBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
  if ((ife->ifm_media & IFM_GMASK) == IFM_FDX) {
   CSR_SETBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
  } else {
   CSR_CLRBIT_1(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
  }
  break;
 default:
  device_printf(sc->vge_dev, "unknown media type: %x\n",
      IFM_SUBTYPE(ife->ifm_media));
  break;
 }
}
