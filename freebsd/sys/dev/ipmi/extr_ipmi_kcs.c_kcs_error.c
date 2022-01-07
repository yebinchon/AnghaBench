
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ipmi_softc {int ipmi_dev; } ;


 int INB (struct ipmi_softc*,int ) ;
 int KCS_CONTROL_GET_STATUS_ABORT ;
 int KCS_CTL_STS ;
 int KCS_DATA ;
 int KCS_DATA_IN_READ ;
 int KCS_STATUS_OBF ;
 scalar_t__ KCS_STATUS_STATE (int) ;
 scalar_t__ KCS_STATUS_STATE_IDLE ;
 scalar_t__ KCS_STATUS_STATE_READ ;
 int OUTB (struct ipmi_softc*,int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int kcs_clear_obf (struct ipmi_softc*,int) ;
 int kcs_wait_for_ibf (struct ipmi_softc*,int ) ;
 int kcs_wait_for_obf (struct ipmi_softc*,int) ;

__attribute__((used)) static void
kcs_error(struct ipmi_softc *sc)
{
 int retry, status;
 u_char data;

 for (retry = 0; retry < 2; retry++) {


  status = kcs_wait_for_ibf(sc, 0);


  OUTB(sc, KCS_CTL_STS, KCS_CONTROL_GET_STATUS_ABORT);


  status = kcs_wait_for_ibf(sc, 0);


  kcs_clear_obf(sc, status);

  if (status & KCS_STATUS_OBF) {
   data = INB(sc, KCS_DATA);
   if (data != 0)
    device_printf(sc->ipmi_dev,
        "KCS Error Data %02x\n", data);
  }


  OUTB(sc, KCS_DATA, 0x00);


  status = kcs_wait_for_ibf(sc, 0);

  if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_READ) {


   status = kcs_wait_for_obf(sc, 1);


   data = INB(sc, KCS_DATA);
   if (data != 0 && (data != 0xff || bootverbose))
    device_printf(sc->ipmi_dev, "KCS error: %02x\n",
        data);


   OUTB(sc, KCS_DATA, KCS_DATA_IN_READ);


   status = kcs_wait_for_ibf(sc, 0);
  }


  if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_IDLE) {

   status = kcs_wait_for_obf(sc, 1);


   kcs_clear_obf(sc, status);
   return;
  }
 }
 device_printf(sc->ipmi_dev, "KCS: Error retry exhausted\n");
}
