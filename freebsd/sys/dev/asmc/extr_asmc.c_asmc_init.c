
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct asmc_softc {int sc_sms_intr_works; scalar_t__ sc_nfan; TYPE_1__* sc_model; } ;
typedef int device_t ;
struct TYPE_2__ {int * smc_sms_x; } ;


 int ASMC_DPRINTF (char*) ;
 int ASMC_KEY_INTOK ;
 int ASMC_KEY_SMS ;
 int ASMC_KEY_SMS_FLAG ;
 int ASMC_KEY_SMS_HIGH ;
 int ASMC_KEY_SMS_HIGH_INT ;
 int ASMC_KEY_SMS_LOW ;
 int ASMC_KEY_SMS_LOW_INT ;
 scalar_t__ ASMC_MAXFANS ;
 int ASMC_NKEYS ;
 int ASMC_SMS_INIT1 ;
 int ASMC_SMS_INIT2 ;
 int DELAY (int) ;
 int asmc_dumpall (int ) ;
 scalar_t__ asmc_fan_count (int ) ;
 scalar_t__ asmc_key_read (int ,int ,int*,int) ;
 int asmc_key_write (int ,int ,int*,int) ;
 int asmc_sms_calibrate (int ) ;
 scalar_t__ bootverbose ;
 struct asmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int
asmc_init(device_t dev)
{
 struct asmc_softc *sc = device_get_softc(dev);
 int i, error = 1;
 uint8_t buf[4];

 if (sc->sc_model->smc_sms_x == ((void*)0))
  goto nosms;




 buf[0] = 0x01;
 ASMC_DPRINTF(("intok key\n"));
 asmc_key_write(dev, ASMC_KEY_INTOK, buf, 1);
 DELAY(50);




 buf[0] = 20;
 ASMC_DPRINTF(("low int key\n"));
 asmc_key_write(dev, ASMC_KEY_SMS_LOW_INT, buf, 1);
 DELAY(200);

 buf[0] = 20;
 ASMC_DPRINTF(("high int key\n"));
 asmc_key_write(dev, ASMC_KEY_SMS_HIGH_INT, buf, 1);
 DELAY(200);

 buf[0] = 0x00;
 buf[1] = 0x60;
 ASMC_DPRINTF(("sms low key\n"));
 asmc_key_write(dev, ASMC_KEY_SMS_LOW, buf, 2);
 DELAY(200);

 buf[0] = 0x01;
 buf[1] = 0xc0;
 ASMC_DPRINTF(("sms high key\n"));
 asmc_key_write(dev, ASMC_KEY_SMS_HIGH, buf, 2);
 DELAY(200);





 buf[0] = 0x01;
 ASMC_DPRINTF(("sms flag key\n"));
 asmc_key_write(dev, ASMC_KEY_SMS_FLAG, buf, 1);
 DELAY(100);

 sc->sc_sms_intr_works = 0;





 for (i = 0; i < 1000; i++) {
  if (asmc_key_read(dev, ASMC_KEY_SMS, buf, 2) == 0 &&
      (buf[0] == ASMC_SMS_INIT1 && buf[1] == ASMC_SMS_INIT2)) {
   error = 0;
   sc->sc_sms_intr_works = 1;
   goto out;
  }
  buf[0] = ASMC_SMS_INIT1;
  buf[1] = ASMC_SMS_INIT2;
  ASMC_DPRINTF(("sms key\n"));
  asmc_key_write(dev, ASMC_KEY_SMS, buf, 2);
  DELAY(50);
 }
 device_printf(dev, "WARNING: Sudden Motion Sensor not initialized!\n");

out:
 asmc_sms_calibrate(dev);
nosms:
 sc->sc_nfan = asmc_fan_count(dev);
 if (sc->sc_nfan > ASMC_MAXFANS) {
  device_printf(dev, "more than %d fans were detected. Please "
      "report this.\n", ASMC_MAXFANS);
  sc->sc_nfan = ASMC_MAXFANS;
 }

 if (bootverbose) {



  asmc_key_read(dev, ASMC_NKEYS, buf, 4);
  device_printf(dev, "number of keys: %d\n", ntohl(*(uint32_t*)buf));
 }





 return (error);
}
