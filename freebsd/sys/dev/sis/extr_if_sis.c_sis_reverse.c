
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t
sis_reverse(uint16_t n)
{
 n = ((n >> 1) & 0x5555) | ((n << 1) & 0xaaaa);
 n = ((n >> 2) & 0x3333) | ((n << 2) & 0xcccc);
 n = ((n >> 4) & 0x0f0f) | ((n << 4) & 0xf0f0);
 n = ((n >> 8) & 0x00ff) | ((n << 8) & 0xff00);

 return (n);
}
