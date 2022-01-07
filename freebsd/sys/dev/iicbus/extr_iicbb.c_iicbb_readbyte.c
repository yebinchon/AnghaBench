
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct iicbb_softc {int dummy; } ;
typedef int device_t ;


 int I2C_DEBUG (int ) ;
 scalar_t__ I2C_GETSDA (int ) ;
 int I2C_SET (struct iicbb_softc*,int ,int,int) ;
 struct iicbb_softc* device_get_softc (int ) ;
 int iicbb_one (int ,int) ;
 int iicbb_zero (int ,int) ;
 int printf (char*,int,char) ;

__attribute__((used)) static u_char
iicbb_readbyte(device_t dev, int last, int timeout)
{
 struct iicbb_softc *sc = device_get_softc(dev);
 int i;
 unsigned char data=0;

 I2C_SET(sc,dev,0,1);
 for (i=7; i>=0; i--)
 {
  I2C_SET(sc,dev,1,1);
  if (I2C_GETSDA(dev))
   data |= (1<<i);
  I2C_SET(sc,dev,0,1);
 }
 if (last) {
  iicbb_one(dev, timeout);
 } else {
  iicbb_zero(dev, timeout);
 }
 I2C_DEBUG(printf("r%02x%c ",(int)data,last?'-':'+'));
 return (data);
}
