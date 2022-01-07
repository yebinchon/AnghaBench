
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sfxge_softc {int enp; int media; } ;
typedef size_t efx_phy_media_type_t ;
typedef int efx_phy_cap_type_t ;
typedef size_t efx_link_mode_t ;


 size_t EFX_LINK_10HDX ;
 size_t EFX_LINK_NMODES ;
 int EFX_PHY_CAP_AN ;
 int EFX_PHY_CAP_INVALID ;
 int EFX_PHY_CAP_PERM ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_IMASK ;
 int efx_filter_fini (int ) ;
 int efx_filter_init (int ) ;
 int efx_phy_adv_cap_get (int ,int ,int*) ;
 int efx_phy_media_type_get (int ,size_t*) ;
 int efx_port_fini (int ) ;
 int efx_port_init (int ) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int** sfxge_link_mode ;
 int sfxge_link_mode_to_phy_cap (size_t) ;
 int sfxge_media_change ;
 int sfxge_media_status ;

int sfxge_port_ifmedia_init(struct sfxge_softc *sc)
{
 efx_phy_media_type_t medium_type;
 uint32_t cap_mask, mode_cap_mask;
 efx_link_mode_t mode;
 efx_phy_cap_type_t phy_cap;
 int mode_ifm, best_mode_ifm = 0;
 int rc;






 if ((rc = efx_filter_init(sc->enp)) != 0)
  goto out1;
 if ((rc = efx_port_init(sc->enp)) != 0)
  goto out2;





 ifmedia_init(&sc->media, IFM_IMASK, sfxge_media_change,
     sfxge_media_status);
 efx_phy_media_type_get(sc->enp, &medium_type);
 efx_phy_adv_cap_get(sc->enp, EFX_PHY_CAP_PERM, &cap_mask);

 for (mode = EFX_LINK_10HDX; mode < EFX_LINK_NMODES; mode++) {
  phy_cap = sfxge_link_mode_to_phy_cap(mode);
  if (phy_cap == EFX_PHY_CAP_INVALID)
   continue;

  mode_cap_mask = (1 << phy_cap);
  mode_ifm = sfxge_link_mode[medium_type][mode];

  if ((cap_mask & mode_cap_mask) && mode_ifm) {

   ifmedia_add(&sc->media, mode_ifm, 0, ((void*)0));
   best_mode_ifm = mode_ifm;
  }
 }

 if (cap_mask & (1 << EFX_PHY_CAP_AN)) {

  mode_ifm = IFM_ETHER | IFM_AUTO;
  ifmedia_add(&sc->media, mode_ifm, 0, ((void*)0));
  best_mode_ifm = mode_ifm;
 }

 if (best_mode_ifm != 0)
  ifmedia_set(&sc->media, best_mode_ifm);


 efx_port_fini(sc->enp);
out2:
 efx_filter_fini(sc->enp);
out1:
 return (rc);
}
