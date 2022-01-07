
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;


 int IFM_1000_T ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_NONE ;
 int PORT_STATUS_DUPLEX_MASK ;
 int PORT_STATUS_LINK_MASK ;



 int PORT_STATUS_SPEED_MASK ;

__attribute__((used)) static void
e6000sw_update_ifmedia(uint16_t portstatus, u_int *media_status, u_int *media_active)
{
 *media_active = IFM_ETHER;
 *media_status = IFM_AVALID;

 if ((portstatus & PORT_STATUS_LINK_MASK) != 0)
  *media_status |= IFM_ACTIVE;
 else {
  *media_active |= IFM_NONE;
  return;
 }

 switch (portstatus & PORT_STATUS_SPEED_MASK) {
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

 if ((portstatus & PORT_STATUS_DUPLEX_MASK) == 0)
  *media_active |= IFM_FDX;
 else
  *media_active |= IFM_HDX;
}
