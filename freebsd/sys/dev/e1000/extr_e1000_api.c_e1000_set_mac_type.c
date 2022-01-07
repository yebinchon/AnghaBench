
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_mac_info {int type; } ;
struct e1000_hw {int device_id; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_ERR_MAC_INIT ;
 int E1000_SUCCESS ;
 int e1000_80003es2lan ;
 int e1000_82540 ;
 int e1000_82541 ;
 int e1000_82541_rev_2 ;
 int e1000_82542 ;
 int e1000_82543 ;
 int e1000_82544 ;
 int e1000_82545 ;
 int e1000_82545_rev_3 ;
 int e1000_82546 ;
 int e1000_82546_rev_3 ;
 int e1000_82547 ;
 int e1000_82547_rev_2 ;
 int e1000_82571 ;
 int e1000_82572 ;
 int e1000_82573 ;
 int e1000_82574 ;
 int e1000_82575 ;
 int e1000_82576 ;
 int e1000_82580 ;
 int e1000_82583 ;
 int e1000_i210 ;
 int e1000_i211 ;
 int e1000_i350 ;
 int e1000_i354 ;
 int e1000_ich10lan ;
 int e1000_ich8lan ;
 int e1000_ich9lan ;
 int e1000_pch2lan ;
 int e1000_pch_cnp ;
 int e1000_pch_lpt ;
 int e1000_pch_spt ;
 int e1000_pchlan ;
 int e1000_vfadapt ;
 int e1000_vfadapt_i350 ;

s32 e1000_set_mac_type(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_set_mac_type");

 switch (hw->device_id) {
 case 266:
  mac->type = e1000_82542;
  break;
 case 264:
 case 265:
  mac->type = e1000_82543;
  break;
 case 263:
 case 262:
 case 261:
 case 260:
  mac->type = e1000_82544;
  break;
 case 278:
 case 277:
 case 276:
 case 275:
 case 274:
  mac->type = e1000_82540;
  break;
 case 259:
 case 258:
  mac->type = e1000_82545;
  break;
 case 257:
 case 256:
 case 255:
  mac->type = e1000_82545_rev_3;
  break;
 case 254:
 case 253:
 case 252:
  mac->type = e1000_82546;
  break;
 case 251:
 case 250:
 case 246:
 case 249:
 case 248:
 case 247:
  mac->type = e1000_82546_rev_3;
  break;
 case 273:
 case 272:
 case 270:
  mac->type = e1000_82541;
  break;
 case 271:
 case 269:
 case 268:
 case 267:
  mac->type = e1000_82541_rev_2;
  break;
 case 245:
 case 244:
  mac->type = e1000_82547;
  break;
 case 243:
  mac->type = e1000_82547_rev_2;
  break;
 case 242:
 case 241:
 case 237:
 case 236:
 case 235:
 case 240:
 case 234:
 case 238:
 case 239:
  mac->type = e1000_82571;
  break;
 case 233:
 case 232:
 case 231:
 case 230:
  mac->type = e1000_82572;
  break;
 case 229:
 case 228:
 case 227:
  mac->type = e1000_82573;
  break;
 case 226:
 case 225:
  mac->type = e1000_82574;
  break;
 case 205:
  mac->type = e1000_82583;
  break;
 case 282:
 case 280:
 case 281:
 case 279:
  mac->type = e1000_80003es2lan;
  break;
 case 174:
 case 172:
 case 173:
 case 169:
 case 168:
 case 171:
 case 170:
 case 175:
  mac->type = e1000_ich8lan;
  break;
 case 166:
 case 164:
 case 165:
 case 161:
 case 160:
 case 159:
 case 163:
 case 167:
 case 162:
 case 177:
 case 178:
 case 176:
  mac->type = e1000_ich9lan;
  break;
 case 180:
 case 181:
 case 179:
  mac->type = e1000_ich10lan;
  break;
 case 151:
 case 152:
 case 136:
 case 137:
  mac->type = e1000_pchlan;
  break;
 case 158:
 case 157:
  mac->type = e1000_pch2lan;
  break;
 case 139:
 case 138:
 case 141:
 case 140:
 case 150:
 case 148:
 case 149:
 case 147:
  mac->type = e1000_pch_lpt;
  break;
 case 135:
 case 131:
 case 134:
 case 130:
 case 142:
 case 133:
 case 129:
 case 132:
 case 128:
  mac->type = e1000_pch_spt;
  break;
 case 156:
 case 154:
 case 155:
 case 153:
 case 146:
 case 144:
 case 145:
 case 143:
  mac->type = e1000_pch_cnp;
  break;
 case 224:
 case 223:
 case 222:
  mac->type = e1000_82575;
  break;
 case 221:
 case 220:
 case 215:
 case 217:
 case 216:
 case 219:
 case 218:
 case 214:
  mac->type = e1000_82576;
  break;
 case 211:
 case 209:
 case 207:
 case 206:
 case 210:
 case 208:
 case 201:
 case 203:
 case 204:
 case 202:
  mac->type = e1000_82580;
  break;
 case 191:
 case 189:
 case 188:
 case 187:
 case 190:
  mac->type = e1000_i350;
  break;
 case 199:
 case 194:
 case 200:
 case 197:
 case 198:
 case 196:
 case 195:
 case 193:
  mac->type = e1000_i210;
  break;
 case 192:
  mac->type = e1000_i211;
  break;
 case 213:
 case 212:
  mac->type = e1000_vfadapt;
  break;
 case 186:
 case 185:
  mac->type = e1000_vfadapt_i350;
  break;

 case 184:
 case 182:
 case 183:
  mac->type = e1000_i354;
  break;
 default:

  ret_val = -E1000_ERR_MAC_INIT;
  break;
 }

 return ret_val;
}
