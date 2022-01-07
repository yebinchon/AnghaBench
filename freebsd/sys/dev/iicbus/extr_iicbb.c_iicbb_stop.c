
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int dummy; } ;
typedef int device_t ;


 int I2C_DEBUG (int ) ;
 int I2C_GETSCL (int ) ;
 int I2C_SET (struct iicbb_softc*,int ,int,int) ;
 int IIC_ETIMEOUT ;
 struct iicbb_softc* device_get_softc (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
iicbb_stop(device_t dev)
{
 struct iicbb_softc *sc = device_get_softc(dev);

 I2C_SET(sc,dev,0,0);
 I2C_SET(sc,dev,1,0);
 I2C_SET(sc,dev,1,1);
 I2C_DEBUG(printf(">"));
 I2C_DEBUG(printf("\n"));


 if (!I2C_GETSCL(dev))
  return (IIC_ETIMEOUT);
 return (0);
}
