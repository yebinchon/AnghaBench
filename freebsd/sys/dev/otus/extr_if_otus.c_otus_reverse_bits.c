
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static __inline uint8_t
otus_reverse_bits(uint8_t v)
{
 v = ((v >> 1) & 0x55) | ((v & 0x55) << 1);
 v = ((v >> 2) & 0x33) | ((v & 0x33) << 2);
 v = ((v >> 4) & 0x0f) | ((v & 0x0f) << 4);
 return v;
}
