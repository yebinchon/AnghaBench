
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int AR8X16_PORT_STS_DUPLEX ;
 int AR8X16_PORT_STS_LINK_UP ;
 int AR8X16_PORT_STS_RXFLOW ;



 int AR8X16_PORT_STS_SPEED_MASK ;
 int AR8X16_PORT_STS_TXFLOW ;
 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;

__attribute__((used)) static void
arswitch_update_ifmedia(int portstatus, u_int *media_status, u_int *media_active)
{
 *media_active = IFM_ETHER;
 *media_status = IFM_AVALID;

 if ((portstatus & AR8X16_PORT_STS_LINK_UP) != 0)
  *media_status |= IFM_ACTIVE;
 else {
  *media_active |= IFM_NONE;
  return;
 }
 switch (portstatus & AR8X16_PORT_STS_SPEED_MASK) {
 case 130:
  *media_active |= IFM_10_T;
  break;
 case 129:
  *media_active |= IFM_100_TX;
  break;
 case 128:
  *media_active |= IFM_1000_T;
  break;
 }
 if ((portstatus & AR8X16_PORT_STS_DUPLEX) == 0)
  *media_active |= IFM_FDX;
 else
  *media_active |= IFM_HDX;
 if ((portstatus & AR8X16_PORT_STS_TXFLOW) != 0)
  *media_active |= IFM_ETH_TXPAUSE;
 if ((portstatus & AR8X16_PORT_STS_RXFLOW) != 0)
  *media_active |= IFM_ETH_RXPAUSE;
}
