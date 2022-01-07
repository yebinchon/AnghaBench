
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wi_softc {int sc_reset; int sc_dev; } ;


 int CSR_WRITE_2 (struct wi_softc*,int ,int) ;
 int DELAY (int) ;
 int WI_CMD_INI ;
 int WI_DELAY ;
 int WI_EVENT_ACK ;
 int WI_INIT_TRIES ;
 int WI_INT_EN ;
 int WI_RID_TICK_TIME ;
 int device_printf (int ,char*) ;
 int wi_cmd (struct wi_softc*,int ,int ,int ,int ) ;
 int wi_write_val (struct wi_softc*,int ,int) ;

__attribute__((used)) static int
wi_reset(struct wi_softc *sc)
{

 int i, error = 0;

 for (i = 0; i < 3; i++) {
  error = wi_cmd(sc, WI_CMD_INI, 0, 0, 0);
  if (error == 0)
   break;
  DELAY(WI_DELAY * 1000);
 }
 sc->sc_reset = 1;
 if (i == 3) {
  device_printf(sc->sc_dev, "reset failed\n");
  return error;
 }

 CSR_WRITE_2(sc, WI_INT_EN, 0);
 CSR_WRITE_2(sc, WI_EVENT_ACK, 0xFFFF);


 wi_write_val(sc, WI_RID_TICK_TIME, 8);

 return 0;

}
