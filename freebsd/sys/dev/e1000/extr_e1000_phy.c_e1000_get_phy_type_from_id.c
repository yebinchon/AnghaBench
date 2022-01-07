
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum e1000_phy_type { ____Placeholder_e1000_phy_type } e1000_phy_type ;
 int e1000_phy_82577 ;
 int e1000_phy_82578 ;
 int e1000_phy_82579 ;
 int e1000_phy_82580 ;
 int e1000_phy_bm ;
 int e1000_phy_gg82563 ;
 int e1000_phy_i210 ;
 int e1000_phy_i217 ;
 int e1000_phy_ife ;
 int e1000_phy_igp_2 ;
 int e1000_phy_igp_3 ;
 int e1000_phy_m88 ;
 int e1000_phy_unknown ;

enum e1000_phy_type e1000_get_phy_type_from_id(u32 phy_id)
{
 enum e1000_phy_type phy_type = e1000_phy_unknown;

 switch (phy_id) {
 case 134:
 case 135:
 case 132:
 case 133:
 case 128:
 case 129:
 case 145:
 case 131:
 case 130:
  phy_type = e1000_phy_m88;
  break;
 case 137:
  phy_type = e1000_phy_igp_2;
  break;
 case 148:
  phy_type = e1000_phy_gg82563;
  break;
 case 136:
  phy_type = e1000_phy_igp_3;
  break;
 case 139:
 case 138:
 case 140:
  phy_type = e1000_phy_ife;
  break;
 case 150:
 case 149:
  phy_type = e1000_phy_bm;
  break;
 case 143:
  phy_type = e1000_phy_82578;
  break;
 case 144:
  phy_type = e1000_phy_82577;
  break;
 case 142:
  phy_type = e1000_phy_82579;
  break;
 case 146:
  phy_type = e1000_phy_i217;
  break;
 case 141:
  phy_type = e1000_phy_82580;
  break;
 case 147:
  phy_type = e1000_phy_i210;
  break;
 default:
  phy_type = e1000_phy_unknown;
  break;
 }
 return phy_type;
}
