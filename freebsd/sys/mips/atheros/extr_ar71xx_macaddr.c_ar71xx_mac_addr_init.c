
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int
ar71xx_mac_addr_init(unsigned char *dst, const unsigned char *src,
    int offset, int is_local)
{
 int t;

 if (dst == ((void*)0) || src == ((void*)0))
  return (-1);



 t = (((uint32_t) src[3]) << 16)
     + (((uint32_t) src[4]) << 8)
     + ((uint32_t) src[5]);


 t += offset;

 dst[0] = src[0];
 dst[1] = src[1];
 dst[2] = src[2];
 dst[3] = (t >> 16) & 0xff;
 dst[4] = (t >> 8) & 0xff;
 dst[5] = t & 0xff;

 if (is_local)
  dst[0] |= 0x02;


 return (0);
}
