
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int dummy; } ;
typedef int device_t ;


 int I2C_SET (struct iicbb_softc*,int ,int,int ) ;
 struct iicbb_softc* device_get_softc (int ) ;

__attribute__((used)) static void
iicbb_zero(device_t dev, int timeout)
{
 struct iicbb_softc *sc = device_get_softc(dev);

 I2C_SET(sc,dev,0,0);
 I2C_SET(sc,dev,1,0);
 I2C_SET(sc,dev,0,0);
 return;
}
