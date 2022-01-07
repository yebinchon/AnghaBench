
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifmedia_entry {int ifm_media; } ;


 int ANAR_10 ;
 int ANAR_10_FD ;
 int ANAR_TX ;
 int ANAR_TX_FD ;




 int IFM_FDX ;
 int const IFM_SUBTYPE (int) ;

__attribute__((used)) static uint16_t
atphy_anar(struct ifmedia_entry *ife)
{
 uint16_t anar;

 anar = 0;
 switch (IFM_SUBTYPE(ife->ifm_media)) {
 case 128:
  anar |= ANAR_TX_FD | ANAR_TX | ANAR_10_FD | ANAR_10;
  return (anar);
 case 131:
  return (anar);
 case 130:
  anar |= ANAR_TX;
  break;
 case 129:
  anar |= ANAR_10;
  break;
 default:
  return (0);
 }

 if ((ife->ifm_media & IFM_FDX) != 0) {
  if (IFM_SUBTYPE(ife->ifm_media) == 130)
   anar |= ANAR_TX_FD;
  else
   anar |= ANAR_10_FD;
 }

 return (anar);
}
