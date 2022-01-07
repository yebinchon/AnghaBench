
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int fls (int) ;

__attribute__((used)) static int
hdaa_allowed_stripes(uint16_t fmt)
{
 static const int bits[8] = { 8, 16, 20, 24, 32, 32, 32, 32 };
 int size;

 size = bits[(fmt >> 4) & 0x03];
 size *= (fmt & 0x0f) + 1;
 size *= ((fmt >> 11) & 0x07) + 1;
 return (0xffffffffU >> (32 - fls(size / 8)));
}
