
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ ti_swap_type ;


 scalar_t__ TI_SWAP_NTOH ;
 int htonl (int const) ;
 int ntohl (int const) ;
 int printf (char*,size_t) ;

__attribute__((used)) static int
ti_bcopy_swap(const void *src, void *dst, size_t len, ti_swap_type swap_type)
{
 const uint8_t *tmpsrc;
 uint8_t *tmpdst;
 size_t tmplen;

 if (len & 0x3) {
  printf("ti_bcopy_swap: length %zd isn't 32-bit aligned\n", len);
  return (-1);
 }

 tmpsrc = src;
 tmpdst = dst;
 tmplen = len;

 while (tmplen) {
  if (swap_type == TI_SWAP_NTOH)
   *(uint32_t *)tmpdst = ntohl(*(const uint32_t *)tmpsrc);
  else
   *(uint32_t *)tmpdst = htonl(*(const uint32_t *)tmpsrc);
  tmpsrc += 4;
  tmpdst += 4;
  tmplen -= 4;
 }

 return (0);
}
