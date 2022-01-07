
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {int dummy; } ;
typedef int device_t ;


 int CARD_3V_CARD ;
 int CARD_5V_CARD ;
 int CARD_XV_CARD ;
 int CARD_YV_CARD ;
 int CBB_SOCKET_CONTROL ;
 int CBB_SOCKET_CTRL_VCCMASK ;




 int cbb_get (struct cbb_softc*,int ) ;
 struct cbb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cbb_current_voltage(device_t brdev)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 uint32_t ctrl;

 ctrl = cbb_get(sc, CBB_SOCKET_CONTROL);
 switch (ctrl & CBB_SOCKET_CTRL_VCCMASK) {
 case 130:
  return CARD_5V_CARD;
 case 131:
  return CARD_3V_CARD;
 case 129:
  return CARD_XV_CARD;
 case 128:
  return CARD_YV_CARD;
 }
 return 0;
}
