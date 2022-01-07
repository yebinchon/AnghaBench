
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int I2C_DEBUG (int ) ;
 int iicbb_one (int ,int) ;
 int iicbb_zero (int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
iicbb_sendbyte(device_t dev, u_char data, int timeout)
{
 int i;

 for (i=7; i>=0; i--) {
  if (data&(1<<i)) {
   iicbb_one(dev, timeout);
  } else {
   iicbb_zero(dev, timeout);
  }
 }
 I2C_DEBUG(printf("w%02x",(int)data));
 return;
}
