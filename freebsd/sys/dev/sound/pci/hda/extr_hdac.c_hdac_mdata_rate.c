
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int
hdac_mdata_rate(uint16_t fmt)
{
 static const int mbits[8] = { 8, 16, 32, 32, 32, 32, 32, 32 };
 int rate, bits;

 if (fmt & (1 << 14))
  rate = 44100;
 else
  rate = 48000;
 rate *= ((fmt >> 11) & 0x07) + 1;
 rate /= ((fmt >> 8) & 0x07) + 1;
 bits = mbits[(fmt >> 4) & 0x03];
 bits *= (fmt & 0x0f) + 1;
 return (rate * bits);
}
