
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int CARD_3V_CARD ;
 int CARD_5V_CARD ;
 int CARD_OFF ;
 int CARD_VCC (int) ;
 int CARD_XV_CARD ;
 int CARD_YV_CARD ;
 int CBB_SOCKET_STATE ;
 int CBB_STATE_POWER_CYCLE ;
 int ENXIO ;
 int EXCA_PWRCTL ;
 int EXCA_PWRCTL_OE ;
 int XV ;
 int YV ;
 int cbb_current_voltage (int ) ;
 int cbb_detect_voltage (int ) ;
 int cbb_get (struct cbb_softc*,int ) ;
 int cbb_power (int ,int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int exca_clrb (int *,int ,int ) ;

__attribute__((used)) static int
cbb_do_power(device_t brdev)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 uint32_t voltage, curpwr;
 uint32_t status;


 exca_clrb(&sc->exca[0], EXCA_PWRCTL, EXCA_PWRCTL_OE);

 voltage = cbb_detect_voltage(brdev);
 curpwr = cbb_current_voltage(brdev);
 status = cbb_get(sc, CBB_SOCKET_STATE);
 if ((status & CBB_STATE_POWER_CYCLE) && (voltage & curpwr))
  return 0;

 cbb_power(brdev, CARD_OFF);
 if (voltage & CARD_YV_CARD)
  cbb_power(brdev, CARD_VCC(YV));
 else if (voltage & CARD_XV_CARD)
  cbb_power(brdev, CARD_VCC(XV));
 else if (voltage & CARD_3V_CARD)
  cbb_power(brdev, CARD_VCC(3));
 else if (voltage & CARD_5V_CARD)
  cbb_power(brdev, CARD_VCC(5));
 else {
  device_printf(brdev, "Unknown card voltage\n");
  return (ENXIO);
 }
 return (0);
}
