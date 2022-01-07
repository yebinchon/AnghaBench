
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {scalar_t__ tv_sec; } ;
struct nxprtc_softc {scalar_t__ bat_time; int dev; } ;


 int PCF8523_B_CS3_BLF ;
 int PCF8523_B_CS3_PM_DSNBM ;
 int PCF8523_B_CS3_PM_STD ;
 int PCF8523_R_CS3 ;
 int device_printf (int ,char*) ;
 int getnanouptime (struct timespec*) ;
 int mstosbt (int) ;
 int pause_sbt (char*,int ,int ,int ) ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 int write_reg (struct nxprtc_softc*,int ,int ) ;

__attribute__((used)) static int
pcf8523_battery_check(struct nxprtc_softc *sc)
{
 struct timespec ts;
 int err;
 uint8_t cs3;


 getnanouptime(&ts);
 if (ts.tv_sec < sc->bat_time)
  return (0);
 sc->bat_time = ts.tv_sec + (60 * 60 * 24);
 err = write_reg(sc, PCF8523_R_CS3, PCF8523_B_CS3_PM_STD);
 if (err != 0) {
  device_printf(sc->dev, "cannot write CS3 reg\n");
  return (err);
 }
 pause_sbt("nxpbat", mstosbt(10), 0, 0);
 if ((err = read_reg(sc, PCF8523_R_CS3, &cs3)) != 0) {
  device_printf(sc->dev, "cannot read CS3 reg\n");
  return (err);
 }
 err = write_reg(sc, PCF8523_R_CS3, PCF8523_B_CS3_PM_DSNBM);
 if (err != 0) {
  device_printf(sc->dev, "cannot write CS3 reg\n");
  return (err);
 }

 if (cs3 & PCF8523_B_CS3_BLF)
  device_printf(sc->dev, "WARNING: RTC battery is low\n");

 return (0);
}
