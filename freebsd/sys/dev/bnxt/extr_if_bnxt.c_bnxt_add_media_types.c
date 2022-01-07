
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bnxt_link_info {int support_speeds; } ;
struct bnxt_softc {int flags; int dev; int media; struct bnxt_link_info link_info; } ;


 int BNXT_FLAG_NPAR ;
 int BNXT_IFMEDIA_ADD (int ,int ,int ) ;
 int IFM_1000_CX ;
 int IFM_1000_KX ;
 int IFM_1000_LX ;
 int IFM_1000_SGMII ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100G_CR4 ;
 int IFM_100G_KR4 ;
 int IFM_100G_LR4 ;
 int IFM_100G_SR4 ;
 int IFM_100_T ;
 int IFM_10G_AOC ;
 int IFM_10G_CR1 ;
 int IFM_10G_KR ;
 int IFM_10G_LR ;
 int IFM_10G_SR ;
 int IFM_10G_T ;
 int IFM_10_T ;
 int IFM_20G_KR2 ;
 int IFM_2500_KX ;
 int IFM_2500_T ;
 int IFM_25G_ACC ;
 int IFM_25G_CR ;
 int IFM_25G_KR ;
 int IFM_25G_LR ;
 int IFM_25G_SR ;
 int IFM_40G_CR4 ;
 int IFM_40G_KR4 ;
 int IFM_40G_LR4 ;
 int IFM_40G_SR4 ;
 int IFM_50G_CR2 ;
 int IFM_50G_KR2 ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int SPEEDS_100GB ;
 int SPEEDS_100MB ;
 int SPEEDS_10GB ;
 int SPEEDS_10MB ;
 int SPEEDS_1GB ;
 int SPEEDS_1GBHD ;
 int SPEEDS_20GB ;
 int SPEEDS_25GB ;
 int SPEEDS_2_5GB ;
 int SPEEDS_40GB ;
 int SPEEDS_50GB ;
 int device_printf (int ,char*,...) ;
 int get_phy_type (struct bnxt_softc*) ;
 int ifmedia_add (int ,int,int ,int *) ;

__attribute__((used)) static void
bnxt_add_media_types(struct bnxt_softc *softc)
{
 struct bnxt_link_info *link_info = &softc->link_info;
 uint16_t supported;
 uint8_t phy_type = get_phy_type(softc);

 supported = link_info->support_speeds;


 ifmedia_add(softc->media, IFM_ETHER | IFM_AUTO, 0, ((void*)0));

 if (softc->flags & BNXT_FLAG_NPAR)
  return;

 switch (phy_type) {
 case 155:
 case 142:
 case 147:
 case 145:
 case 146:
 case 138:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_100GB, IFM_100G_CR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_50GB, IFM_50G_CR2);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_40GB, IFM_40G_CR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_25GB, IFM_25G_CR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_CR1);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_T);
  break;

 case 153:
 case 140:
 case 133:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_100GB, IFM_100G_LR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_40GB, IFM_40G_LR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_25GB, IFM_25G_LR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_LR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_LX);
  break;

 case 152:
 case 151:
 case 139:
 case 132:
 case 141:
 case 154:
 case 144:
 case 149:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_100GB, IFM_100G_SR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_40GB, IFM_40G_SR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_25GB, IFM_25G_SR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_SR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_SX);
  break;

 case 135:
 case 136:
 case 137:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_100GB, IFM_100G_KR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_50GB, IFM_50G_KR2);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_40GB, IFM_40G_KR4);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_25GB, IFM_25G_KR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_20GB, IFM_20G_KR2);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_KR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_KX);
  break;

 case 143:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_25GB, IFM_25G_ACC);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_AOC);
  break;

 case 150:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GBHD, IFM_1000_CX);
  break;

 case 148:
 case 131:
 case 130:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_T);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_2_5GB, IFM_2500_T);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_T);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_100MB, IFM_100_T);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10MB, IFM_10_T);
  break;

 case 134:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_10GB, IFM_10G_KR);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_2_5GB, IFM_2500_KX);
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_KX);
  break;

 case 129:
  BNXT_IFMEDIA_ADD(supported, SPEEDS_1GB, IFM_1000_SGMII);
  break;

 case 128:

  device_printf(softc->dev, "Unknown phy type\n");
  break;

        default:

  device_printf(softc->dev, "phy type %d not supported by driver\n", phy_type);
  break;
 }

 return;
}
