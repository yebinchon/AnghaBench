
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {int dummy; } ;
typedef int device_t ;


 int CARD_3V_CARD ;
 int CARD_5V_CARD ;
 int CARD_UKN_CARD ;
 int CARD_XV_CARD ;
 int CARD_YV_CARD ;
 int CBB_SOCKET_STATE ;
 int CBB_STATE_3VCARD ;
 int CBB_STATE_3VSOCK ;
 int CBB_STATE_5VCARD ;
 int CBB_STATE_5VSOCK ;
 int CBB_STATE_XVCARD ;
 int CBB_STATE_XVSOCK ;
 int CBB_STATE_YVCARD ;
 int CBB_STATE_YVSOCK ;
 int cbb_get (struct cbb_softc*,int ) ;
 struct cbb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
cbb_detect_voltage(device_t brdev)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 uint32_t psr;
 uint32_t vol = CARD_UKN_CARD;

 psr = cbb_get(sc, CBB_SOCKET_STATE);

 if (psr & CBB_STATE_5VCARD && psr & CBB_STATE_5VSOCK)
  vol |= CARD_5V_CARD;
 if (psr & CBB_STATE_3VCARD && psr & CBB_STATE_3VSOCK)
  vol |= CARD_3V_CARD;
 if (psr & CBB_STATE_XVCARD && psr & CBB_STATE_XVSOCK)
  vol |= CARD_XV_CARD;
 if (psr & CBB_STATE_YVCARD && psr & CBB_STATE_YVSOCK)
  vol |= CARD_YV_CARD;

 return (vol);
}
