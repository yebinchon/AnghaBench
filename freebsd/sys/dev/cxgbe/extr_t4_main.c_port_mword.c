
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct port_info {int port_type; int mod_type; } ;
 int IFM_1000_CX ;
 int IFM_1000_KX ;
 int IFM_1000_LX ;
 int IFM_1000_SX ;
 int IFM_1000_T ;
 int IFM_100G_CR4 ;
 int IFM_100G_KR4 ;
 int IFM_100G_LR4 ;
 int IFM_100G_SR4 ;
 int IFM_100_T ;
 int IFM_10G_CX4 ;
 int IFM_10G_ER ;
 int IFM_10G_KR ;
 int IFM_10G_KX4 ;
 int IFM_10G_LR ;
 int IFM_10G_LRM ;
 int IFM_10G_SR ;
 int IFM_10G_T ;
 int IFM_10G_TWINAX ;
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
 int IFM_50G_LR2 ;
 int IFM_50G_SR2 ;
 int IFM_NONE ;
 int IFM_UNKNOWN ;
 int MPASS (int) ;
 int M_FW_PORT_CAP32_SPEED ;
 int powerof2 (int) ;

__attribute__((used)) static int
port_mword(struct port_info *pi, uint32_t speed)
{

 MPASS(speed & M_FW_PORT_CAP32_SPEED);
 MPASS(powerof2(speed));

 switch(pi->port_type) {
 case 148:
 case 146:
 case 147:

  switch (speed) {
  case 168:
   return (IFM_100_T);
  case 166:
   return (IFM_1000_T);
  case 167:
   return (IFM_10G_T);
  }
  break;
 case 134:
  if (speed == 167)
   return (IFM_10G_KX4);
  break;
 case 142:
  if (speed == 167)
   return (IFM_10G_CX4);
  break;
 case 135:
  if (speed == 166)
   return (IFM_1000_KX);
  break;
 case 139:
 case 149:
 case 150:
 case 151:
 case 138:
 case 137:
 case 136:
  switch (speed) {
  case 166:
   return (IFM_1000_KX);
  case 167:
   return (IFM_10G_KR);
  case 165:
   return (IFM_25G_KR);
  case 164:
   return (IFM_40G_KR4);
  case 163:
   return (IFM_50G_KR2);
  case 169:
   return (IFM_100G_KR4);
  }
  break;
 case 140:
 case 141:
 case 129:
 case 130:
 case 132:
 case 131:
 case 144:
 case 143:
 case 145:
 case 128:

  switch (pi->mod_type) {
  case 160:
   switch (speed) {
   case 166:
    return (IFM_1000_LX);
   case 167:
    return (IFM_10G_LR);
   case 165:
    return (IFM_25G_LR);
   case 164:
    return (IFM_40G_LR4);
   case 163:
    return (IFM_50G_LR2);
   case 169:
    return (IFM_100G_LR4);
   }
   break;
  case 155:
   switch (speed) {
   case 166:
    return (IFM_1000_SX);
   case 167:
    return (IFM_10G_SR);
   case 165:
    return (IFM_25G_SR);
   case 164:
    return (IFM_40G_SR4);
   case 163:
    return (IFM_50G_SR2);
   case 169:
    return (IFM_100G_SR4);
   }
   break;
  case 162:
   if (speed == 167)
    return (IFM_10G_ER);
   break;
  case 153:
  case 154:
   switch (speed) {
   case 166:
    return (IFM_1000_CX);
   case 167:
    return (IFM_10G_TWINAX);
   case 165:
    return (IFM_25G_CR);
   case 164:
    return (IFM_40G_CR4);
   case 163:
    return (IFM_50G_CR2);
   case 169:
    return (IFM_100G_CR4);
   }
   break;
  case 159:
   if (speed == 167)
    return (IFM_10G_LRM);
   break;
  case 158:
   MPASS(0);

  case 161:
  case 152:
  case 156:
   break;
  case 157:
   return (IFM_NONE);
  }
  break;
 case 133:
  return (IFM_NONE);
 }

 return (IFM_UNKNOWN);
}
