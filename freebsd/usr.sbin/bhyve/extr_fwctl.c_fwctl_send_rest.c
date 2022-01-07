
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;



__attribute__((used)) static uint32_t
fwctl_send_rest(uint32_t *data, size_t len)
{
 union {
  uint8_t c[4];
  uint32_t w;
 } u;
 uint8_t *cdata;
 int i;

 cdata = (uint8_t *) data;
 u.w = 0;

 for (i = 0, u.w = 0; i < len; i++)
  u.c[i] = *cdata++;

 return (u.w);
}
