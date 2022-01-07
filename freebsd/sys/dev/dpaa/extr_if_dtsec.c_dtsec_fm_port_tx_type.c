
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum eth_dev_type { ____Placeholder_eth_dev_type } eth_dev_type ;
typedef int e_FmPortType ;




 int e_FM_PORT_TYPE_DUMMY ;
 int e_FM_PORT_TYPE_TX ;
 int e_FM_PORT_TYPE_TX_10G ;

e_FmPortType
dtsec_fm_port_tx_type(enum eth_dev_type type)
{

 switch (type) {
 case 128:
  return (e_FM_PORT_TYPE_TX);
 case 129:
  return (e_FM_PORT_TYPE_TX_10G);
 default:
  return (e_FM_PORT_TYPE_DUMMY);
 }
}
