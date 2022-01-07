
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_io_spacing; int ipmi_dev; } ;


 int DELAY (int) ;
 int INB (struct ipmi_softc*,int ) ;
 int KCS_CONTROL_GET_STATUS_ABORT ;
 int KCS_CTL_STS ;
 int KCS_DATA ;
 int KCS_DATA_IN_READ ;
 int KCS_STATUS_IBF ;
 int KCS_STATUS_OBF ;
 int KCS_STATUS_STATE (int) ;
 int KCS_STATUS_STATE_IDLE ;
 int KCS_STATUS_STATE_READ ;
 int OUTB (struct ipmi_softc*,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int printf (char*) ;

int
ipmi_kcs_probe_align(struct ipmi_softc *sc)
{
 int data, status;

 sc->ipmi_io_spacing = 1;
retry:





 status = INB(sc, KCS_CTL_STS);
 while (status & KCS_STATUS_IBF) {
  DELAY(100);
  status = INB(sc, KCS_CTL_STS);
 }

 OUTB(sc, KCS_CTL_STS, KCS_CONTROL_GET_STATUS_ABORT);


 status = INB(sc, KCS_CTL_STS);
 while (status & KCS_STATUS_IBF) {
  DELAY(100);
  status = INB(sc, KCS_CTL_STS);
 }


 if (status == 0) {



  sc->ipmi_io_spacing <<= 1;
  if (sc->ipmi_io_spacing > 4)
   return (0);
  goto retry;
 }







 if (status & KCS_STATUS_OBF)
  data = INB(sc, KCS_DATA);


 OUTB(sc, KCS_DATA, 0);


 status = INB(sc, KCS_CTL_STS);
 while (status & KCS_STATUS_IBF) {
  DELAY(100);
  status = INB(sc, KCS_CTL_STS);
 }

 if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_READ) {

  while (!(status & KCS_STATUS_OBF)) {
   DELAY(100);
   status = INB(sc, KCS_CTL_STS);
  }


  data = INB(sc, KCS_DATA);


  OUTB(sc, KCS_DATA, KCS_DATA_IN_READ);


  status = INB(sc, KCS_CTL_STS);
  while (status & KCS_STATUS_IBF) {
   DELAY(100);
   status = INB(sc, KCS_CTL_STS);
  }
 }

 if (KCS_STATUS_STATE(status) == KCS_STATUS_STATE_IDLE) {

  while (!(status & KCS_STATUS_OBF)) {
   DELAY(100);
   status = INB(sc, KCS_CTL_STS);
  }


  if (status & KCS_STATUS_OBF)
   data = INB(sc, KCS_DATA);
 } else
  device_printf(sc->ipmi_dev, "KCS probe: end state %x\n",
      KCS_STATUS_STATE(status));

 return (1);
}
