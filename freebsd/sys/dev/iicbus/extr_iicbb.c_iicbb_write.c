
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int iicbb_ack (int ,int) ;
 int iicbb_sendbyte (int ,int ,int) ;

__attribute__((used)) static int
iicbb_write(device_t dev, const char *buf, int len, int *sent, int timeout)
{
 int bytes, error = 0;

 bytes = 0;
 while (len) {

  iicbb_sendbyte(dev,(u_char)*buf++, timeout);


  error = iicbb_ack(dev, timeout);
  if (error != 0)
   break;
  bytes++;
  len--;
 }

 *sent = bytes;
 return (error);
}
