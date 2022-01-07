
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asmc_softc {int sms_rest_z; int sms_rest_y; int sms_rest_x; } ;
typedef int device_t ;


 int ASMC_KEY_SMS_X ;
 int ASMC_KEY_SMS_Y ;
 int ASMC_KEY_SMS_Z ;
 int asmc_sms_read (int ,int ,int *) ;
 struct asmc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
asmc_sms_calibrate(device_t dev)
{
 struct asmc_softc *sc = device_get_softc(dev);

 asmc_sms_read(dev, ASMC_KEY_SMS_X, &sc->sms_rest_x);
 asmc_sms_read(dev, ASMC_KEY_SMS_Y, &sc->sms_rest_y);
 asmc_sms_read(dev, ASMC_KEY_SMS_Z, &sc->sms_rest_z);
}
