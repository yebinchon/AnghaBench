
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;


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
 int MTKSWITCH_DUPLEX ;
 int MTKSWITCH_LINK_UP ;
 int MTKSWITCH_RXFLOW ;



 int MTKSWITCH_SPEED_MASK ;
 int MTKSWITCH_TXFLOW ;

__attribute__((used)) static void
mtkswitch_update_ifmedia(uint32_t portstatus, u_int *media_status,
    u_int *media_active)
{
 *media_active = IFM_ETHER;
 *media_status = IFM_AVALID;

 if ((portstatus & MTKSWITCH_LINK_UP) != 0)
  *media_status |= IFM_ACTIVE;
 else {
  *media_active |= IFM_NONE;
  return;
 }

 switch (portstatus & MTKSWITCH_SPEED_MASK) {
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

 if ((portstatus & MTKSWITCH_DUPLEX) != 0)
  *media_active |= IFM_FDX;
 else
  *media_active |= IFM_HDX;

 if ((portstatus & MTKSWITCH_TXFLOW) != 0)
  *media_active |= IFM_ETH_TXPAUSE;
 if ((portstatus & MTKSWITCH_RXFLOW) != 0)
  *media_active |= IFM_ETH_RXPAUSE;
}
