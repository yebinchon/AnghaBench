
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int sc_dev; } ;
struct firmware {int datasize; int data; } ;


 int DELAY (int) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int FIRMWARE_UNLOAD ;
 int RAL_BARRIER_READ_WRITE (struct rt2860_softc*) ;
 int RAL_BARRIER_WRITE (struct rt2860_softc*) ;
 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_LOCK_ASSERT (struct rt2860_softc*) ;
 int RAL_READ (struct rt2860_softc*,int ) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int ) ;
 int RAL_WRITE_REGION_1 (struct rt2860_softc*,int ,int ,int ) ;
 int RT2860_FW_BASE ;
 int RT2860_H2M_BBPAGENT ;
 int RT2860_H2M_MAILBOX ;
 int RT2860_HST_PM_SEL ;
 int RT2860_MCU_READY ;
 int RT2860_MCU_RESET ;
 int RT2860_SYS_CTRL ;
 int device_printf (int ,char*) ;
 struct firmware* firmware_get (char*) ;
 int firmware_put (struct firmware const*,int ) ;

int
rt2860_load_microcode(struct rt2860_softc *sc)
{
 const struct firmware *fp;
 int ntries, error;

 RAL_LOCK_ASSERT(sc);

 RAL_UNLOCK(sc);
 fp = firmware_get("rt2860fw");
 RAL_LOCK(sc);
 if (fp == ((void*)0)) {
  device_printf(sc->sc_dev,
      "unable to receive rt2860fw firmware image\n");
  return EINVAL;
 }


 RAL_WRITE(sc, RT2860_SYS_CTRL, RT2860_HST_PM_SEL);

 RAL_WRITE_REGION_1(sc, RT2860_FW_BASE, fp->data, fp->datasize);

 RAL_WRITE(sc, RT2860_SYS_CTRL, 0);
 RAL_BARRIER_WRITE(sc);
 RAL_WRITE(sc, RT2860_SYS_CTRL, RT2860_MCU_RESET);

 RAL_WRITE(sc, RT2860_H2M_BBPAGENT, 0);
 RAL_WRITE(sc, RT2860_H2M_MAILBOX, 0);


 RAL_BARRIER_READ_WRITE(sc);
 for (ntries = 0; ntries < 1000; ntries++) {
  if (RAL_READ(sc, RT2860_SYS_CTRL) & RT2860_MCU_READY)
   break;
  DELAY(1000);
 }
 if (ntries == 1000) {
  device_printf(sc->sc_dev,
      "timeout waiting for MCU to initialize\n");
  error = ETIMEDOUT;
 } else
  error = 0;

 firmware_put(fp, FIRMWARE_UNLOAD);
 return error;
}
