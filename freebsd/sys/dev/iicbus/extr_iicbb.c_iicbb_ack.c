
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int I2C_DEBUG (int ) ;
 int I2C_GETSCL (int ) ;
 int I2C_GETSDA (int ) ;
 int I2C_SET (struct iicbb_softc*,int ,int,int) ;
 int IIC_ENOACK ;
 int IIC_ETIMEOUT ;
 struct iicbb_softc* device_get_softc (int ) ;
 int printf (char*,char) ;

__attribute__((used)) static int
iicbb_ack(device_t dev, int timeout)
{
 struct iicbb_softc *sc = device_get_softc(dev);
 int noack;
 int k = 0;

 I2C_SET(sc,dev,0,1);
 I2C_SET(sc,dev,1,1);


 if (!I2C_GETSCL(dev))
  return (IIC_ETIMEOUT);

 do {
  noack = I2C_GETSDA(dev);
  if (!noack)
   break;
  DELAY(1);
  k++;
 } while (k < timeout);

 I2C_SET(sc,dev,0,1);
 I2C_DEBUG(printf("%c ",noack?'-':'+'));

 return (noack ? IIC_ENOACK : 0);
}
