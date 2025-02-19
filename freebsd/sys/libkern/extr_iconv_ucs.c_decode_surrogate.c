
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;
typedef int u_char ;



__attribute__((used)) static uint32_t
decode_surrogate(const u_char *ucs)
{
 return ((((ucs[0] & 0x3) << 18) | (ucs[1] << 10) |
     ((ucs[2] & 0x3) << 8) | ucs[3]) + 0x10000);
}
