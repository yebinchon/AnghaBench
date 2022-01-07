
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int efx_phy_cap_type_t ;
typedef int efx_link_mode_t ;
 int EFX_PHY_CAP_100000FDX ;
 int EFX_PHY_CAP_10000FDX ;
 int EFX_PHY_CAP_1000FDX ;
 int EFX_PHY_CAP_1000HDX ;
 int EFX_PHY_CAP_100FDX ;
 int EFX_PHY_CAP_100HDX ;
 int EFX_PHY_CAP_10FDX ;
 int EFX_PHY_CAP_10HDX ;
 int EFX_PHY_CAP_25000FDX ;
 int EFX_PHY_CAP_40000FDX ;
 int EFX_PHY_CAP_50000FDX ;
 int EFX_PHY_CAP_INVALID ;

__attribute__((used)) static efx_phy_cap_type_t
sfxge_link_mode_to_phy_cap(efx_link_mode_t mode)
{
 switch (mode) {
 case 131:
  return (EFX_PHY_CAP_10HDX);
 case 132:
  return (EFX_PHY_CAP_10FDX);
 case 133:
  return (EFX_PHY_CAP_100HDX);
 case 134:
  return (EFX_PHY_CAP_100FDX);
 case 135:
  return (EFX_PHY_CAP_1000HDX);
 case 136:
  return (EFX_PHY_CAP_1000FDX);
 case 137:
  return (EFX_PHY_CAP_10000FDX);
 case 130:
  return (EFX_PHY_CAP_25000FDX);
 case 129:
  return (EFX_PHY_CAP_40000FDX);
 case 128:
  return (EFX_PHY_CAP_50000FDX);
 case 138:
  return (EFX_PHY_CAP_100000FDX);
 default:
  return (EFX_PHY_CAP_INVALID);
 }
}
