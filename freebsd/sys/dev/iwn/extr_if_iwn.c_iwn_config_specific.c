
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwn_softc {char* fwname; int hw_type; int subdevice_id; int sc_dev; int * base_params; int * limits; void* rxchainmask; void* txchainmask; int sc_flags; } ;


 int ENOTSUP ;
 void* IWN_ANT_AB ;
 void* IWN_ANT_ABC ;
 void* IWN_ANT_B ;
 void* IWN_ANT_BC ;
 int IWN_FLAG_BTCOEX ;
 int IWN_FLAG_INTERNAL_PA ;
 int device_printf (int ,char*,int,int ,int ) ;
 int iwn1000_base_params ;
 int iwn1000_sensitivity_limits ;
 int iwn2000_base_params ;
 int iwn2030_base_params ;
 int iwn2030_sensitivity_limits ;
 int iwn4965_base_params ;
 int iwn4965_sensitivity_limits ;
 int iwn5000_base_params ;
 int iwn5000_sensitivity_limits ;
 int iwn6000_sensitivity_limits ;
 int iwn6235_sensitivity_limits ;
 int iwn_5x50_base_params ;
 int iwn_6000_base_params ;
 int iwn_6000g2_base_params ;
 int iwn_6000g2b_base_params ;
 int iwn_6000i_base_params ;
 int iwn_6050_base_params ;
 int iwn_6150_base_params ;
 int iwn_6235_base_params ;

__attribute__((used)) static int
iwn_config_specific(struct iwn_softc *sc, uint16_t pid)
{

 switch (pid) {

 case 300:
 case 299:
 case 298:
 case 297:
  sc->base_params = &iwn4965_base_params;
  sc->limits = &iwn4965_sensitivity_limits;
  sc->fwname = "iwn4965fw";

  sc->txchainmask = IWN_ANT_AB;
  sc->rxchainmask = IWN_ANT_ABC;

  sc->sc_flags |= IWN_FLAG_BTCOEX;
  break;

 case 314:
 case 313:
  switch(sc->subdevice_id) {
   case 272:
   case 268:
   case 267:
   case 266:
   case 265:
   case 264:
   case 263:
   case 262:
   case 261:
   case 271:
   case 270:
   case 269:
    sc->limits = &iwn1000_sensitivity_limits;
    sc->base_params = &iwn1000_base_params;
    sc->fwname = "iwn1000fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 281:
 case 279:
 case 282:
 case 280:
  sc->fwname = "iwn6000fw";
  sc->limits = &iwn6000_sensitivity_limits;
  switch(sc->subdevice_id) {
   case 165:
   case 163:
   case 157:

    sc->base_params = &iwn_6000_base_params;
    break;
   case 162:
   case 159:
   case 156:

   case 161:
   case 158:
   case 164:

   case 160:

    sc->base_params = &iwn_6000i_base_params;
    sc->sc_flags |= IWN_FLAG_INTERNAL_PA;
    sc->txchainmask = IWN_ANT_BC;
    sc->rxchainmask = IWN_ANT_BC;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 278:
 case 277:
  switch(sc->subdevice_id) {
   case 155:
   case 149:
   case 147:

   case 151:
   case 148:
   case 146:

   case 150:

   case 145:
   case 144:

   case 154:

   case 153:

   case 152:

    sc->fwname = "iwn6000g2afw";
    sc->limits = &iwn6000_sensitivity_limits;
    sc->base_params = &iwn_6000g2_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 288:
 case 287:
  switch(sc->subdevice_id) {
   case 182:
   case 181:
   case 180:
   case 179:
   case 178:
    sc->fwname = "iwn6000g2bfw";
    sc->limits = &iwn6235_sensitivity_limits;
    sc->base_params = &iwn_6235_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 286:
 case 285:
  switch(sc->subdevice_id) {
   case 177:
   case 175:
   case 173:

   case 176:
   case 174:
   case 172:

    sc->fwname = "iwn6050fw";
    sc->txchainmask = IWN_ANT_AB;
    sc->rxchainmask = IWN_ANT_AB;
    sc->limits = &iwn6000_sensitivity_limits;
    sc->base_params = &iwn_6050_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 284:
 case 283:
  switch(sc->subdevice_id) {
   case 171:
   case 169:
   case 167:

   case 170:
   case 168:
   case 166:

    sc->fwname = "iwn6050fw";
    sc->limits = &iwn6000_sensitivity_limits;
    sc->base_params = &iwn_6150_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 276:
 case 275:
 case 274:
 case 273:
  switch(sc->subdevice_id) {
   case 143:
   case 134:
   case 132:

   case 135:
   case 133:
   case 131:

   case 130:
   case 142:
   case 138:

   case 129:
   case 141:
   case 137:

   case 128:
   case 140:
   case 136:

   case 139:

    sc->fwname = "iwn6000g2bfw";
    sc->limits = &iwn6000_sensitivity_limits;
    sc->base_params = &iwn_6000g2b_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;




 case 308:
 case 307:
  switch(sc->subdevice_id) {
   case 250:
   case 248:
   case 246:

   case 249:
   case 247:
   case 245:

    sc->fwname = "iwn6000g2bfw";
    sc->limits = &iwn6000_sensitivity_limits;
    sc->base_params = &iwn_6000g2b_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 312:
 case 311:
  switch(sc->subdevice_id) {
   case 260:
   case 259:
   case 258:
   case 257:
   case 256:
   case 255:
    sc->limits = &iwn1000_sensitivity_limits;
    sc->base_params = &iwn1000_base_params;
    sc->fwname = "iwn100fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;





 case 310:
 case 309:
  switch(sc->subdevice_id) {
   case 254:
   case 253:
   case 252:

   case 251:

    sc->limits = &iwn2030_sensitivity_limits;
    sc->base_params = &iwn2000_base_params;
    sc->fwname = "iwn105fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;





 case 306:
 case 305:
  switch(sc->subdevice_id) {
   case 244:
   case 243:
   case 242:
    sc->limits = &iwn2030_sensitivity_limits;
    sc->base_params = &iwn2030_base_params;
    sc->fwname = "iwn135fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;


 case 304:
 case 303:
  switch(sc->subdevice_id) {
   case 241:
   case 240:
   case 239:

   case 238:

    sc->limits = &iwn2030_sensitivity_limits;
    sc->base_params = &iwn2000_base_params;
    sc->fwname = "iwn2000fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice) \n",
        pid, sc->subdevice_id, sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 302:
 case 301:
  switch(sc->subdevice_id) {
   case 237:
   case 235:
   case 233:

   case 236:
   case 234:
   case 232:

    sc->limits = &iwn2030_sensitivity_limits;
    sc->base_params = &iwn2030_base_params;
    sc->fwname = "iwn2030fw";
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 296:
 case 295:
 case 294:
 case 293:
  sc->limits = &iwn5000_sensitivity_limits;
  sc->base_params = &iwn5000_base_params;
  sc->fwname = "iwn5000fw";
  switch(sc->subdevice_id) {
   case 231:
   case 220:
   case 209:
   case 201:
   case 196:
   case 230:
   case 229:
   case 228:
   case 223:
   case 222:
   case 221:
   case 219:

    sc->txchainmask = IWN_ANT_B;
    sc->rxchainmask = IWN_ANT_AB;
    break;
   case 200:
   case 199:
   case 227:
   case 226:
   case 218:
   case 217:

    sc->txchainmask = IWN_ANT_B;
    sc->rxchainmask = IWN_ANT_AB;
    break;
   case 198:
   case 197:
   case 225:
   case 224:
   case 216:
   case 215:

    sc->txchainmask = IWN_ANT_B;
    sc->rxchainmask = IWN_ANT_AB;
    break;
   case 214:
   case 213:
   case 212:
   case 211:
   case 210:
   case 208:
   case 207:
   case 206:
   case 205:
   case 204:
   case 203:
   case 202:

    sc->txchainmask = IWN_ANT_ABC;
    sc->rxchainmask = IWN_ANT_ABC;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;

 case 292:
 case 291:
 case 290:
 case 289:
  sc->limits = &iwn5000_sensitivity_limits;
  sc->base_params = &iwn5000_base_params;
  sc->fwname = "iwn5000fw";
  switch(sc->subdevice_id) {
   case 195:
   case 190:
   case 189:

    sc->limits = &iwn5000_sensitivity_limits;
    sc->base_params = &iwn5000_base_params;
    sc->fwname = "iwn5000fw";
    break;
   case 188:
   case 187:
   case 184:
   case 183:
   case 194:
   case 193:

   case 186:
   case 185:
   case 192:
   case 191:

    sc->limits = &iwn5000_sensitivity_limits;
    sc->fwname = "iwn5150fw";
    sc->base_params = &iwn_5x50_base_params;
    break;
   default:
    device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id :"
        "0x%04x rev %d not supported (subdevice)\n", pid,
        sc->subdevice_id,sc->hw_type);
    return ENOTSUP;
  }
  break;
 default:
  device_printf(sc->sc_dev, "adapter type id : 0x%04x sub id : 0x%04x"
      "rev 0x%08x not supported (device)\n", pid, sc->subdevice_id,
       sc->hw_type);
  return ENOTSUP;
 }
 return 0;
}
