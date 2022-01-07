
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iicbb_softc {int dummy; } ;
typedef int device_t ;


 int I2C_DEBUG (int ) ;
 int I2C_GETSCL (int ) ;
 int I2C_SET (struct iicbb_softc*,int ,int,int) ;
 int IIC_ETIMEOUT ;
 struct iicbb_softc* device_get_softc (int ) ;
 int iicbb_ack (int ,int) ;
 int iicbb_sendbyte (int ,int ,int) ;
 int iicbb_stop (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
iicbb_start(device_t dev, u_char slave, int timeout)
{
 struct iicbb_softc *sc = device_get_softc(dev);
 int error;

 I2C_DEBUG(printf("<"));

 I2C_SET(sc,dev,1,1);


 if (!I2C_GETSCL(dev))
  return (IIC_ETIMEOUT);

 I2C_SET(sc,dev,1,0);
 I2C_SET(sc,dev,0,0);


 iicbb_sendbyte(dev, slave, timeout);


 error = iicbb_ack(dev, timeout);
 if (error == 0)
  return (0);

 iicbb_stop(dev);
 return (error);
}
