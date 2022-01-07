
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




 int IFM_SUBTYPE (int ) ;

__attribute__((used)) static uint16_t
jmphy_anar(struct ifmedia_entry *ife)
{
 uint16_t anar;

 anar = 0;
 switch (IFM_SUBTYPE(ife->ifm_media)) {
 case 128:
  anar |= ANAR_TX_FD | ANAR_TX | ANAR_10_FD | ANAR_10;
  break;
 case 131:
  break;
 case 130:
  anar |= ANAR_TX | ANAR_TX_FD;
  break;
 case 129:
  anar |= ANAR_10 | ANAR_10_FD;
  break;
 default:
  break;
 }

 return (anar);
}
