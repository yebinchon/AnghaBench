
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_char ;



__attribute__((used)) static int
ldm_vnum_get(const u_char *buf, int offset, uint64_t *result, size_t range)
{
 uint64_t num;
 uint8_t len;

 len = buf[offset++];
 if (len > sizeof(uint64_t) || len + offset >= range)
  return (-1);
 for (num = 0; len > 0; len--)
  num = (num << 8) | buf[offset++];
 *result = num;
 return (offset);
}
