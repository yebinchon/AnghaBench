
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DPRINTF (char*,unsigned int) ;

__attribute__((used)) static unsigned int
uplcom_encode_baud_rate_divisor(uint8_t *buf, unsigned int baud)
{
 unsigned int baseline, mantissa, exponent;
 if (baud == 0)
  baud = 1;
 baseline = 383385600;
 mantissa = baseline / baud;
 if (mantissa == 0)
  mantissa = 1;
 exponent = 0;
 while (mantissa >= 512) {
  if (exponent < 7) {
   mantissa >>= 2;
   exponent++;
  } else {

   mantissa = 511;
   break;
  }
 }

 buf[3] = 0x80;
 buf[2] = 0;
 buf[1] = exponent << 1 | mantissa >> 8;
 buf[0] = mantissa & 0xff;


 baud = (baseline / mantissa) >> (exponent << 1);
 DPRINTF("real baud rate will be %u\n", baud);

 return baud;
}
