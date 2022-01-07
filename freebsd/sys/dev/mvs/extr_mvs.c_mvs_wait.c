
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int device_t ;


 int DELAY (int) ;
 int device_printf (int ,char*,int) ;
 int mvs_getstatus (int ,int ) ;

__attribute__((used)) static int
mvs_wait(device_t dev, u_int s, u_int c, int t)
{
 int timeout = 0;
 uint8_t st;

 while (((st = mvs_getstatus(dev, 0)) & (s | c)) != s) {
  if (timeout >= t) {
   if (t != 0)
    device_printf(dev, "Wait status %02x\n", st);
   return (-1);
  }
  DELAY(1000);
  timeout++;
 }
 return (timeout);
}
