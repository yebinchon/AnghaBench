
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
const char *
ixl_vc_opcode_str(uint16_t op)
{
 switch (op) {
 case 128:
  return ("VERSION");
 case 131:
  return ("RESET_VF");
 case 132:
  return ("GET_VF_RESOURCES");
 case 141:
  return ("CONFIG_TX_QUEUE");
 case 142:
  return ("CONFIG_RX_QUEUE");
 case 140:
  return ("CONFIG_VSI_QUEUES");
 case 146:
  return ("CONFIG_IRQ_MAP");
 case 136:
  return ("ENABLE_QUEUES");
 case 137:
  return ("DISABLE_QUEUES");
 case 148:
  return ("ADD_ETH_ADDR");
 case 139:
  return ("DEL_ETH_ADDR");
 case 147:
  return ("ADD_VLAN");
 case 138:
  return ("DEL_VLAN");
 case 145:
  return ("CONFIG_PROMISCUOUS_MODE");
 case 133:
  return ("GET_STATS");
 case 130:
  return ("RSVD");
 case 135:
  return ("EVENT");
 case 144:
  return ("CONFIG_RSS_KEY");
 case 143:
  return ("CONFIG_RSS_LUT");
 case 134:
  return ("GET_RSS_HENA_CAPS");
 case 129:
  return ("SET_RSS_HENA");
 default:
  return ("UNKNOWN");
 }
}
