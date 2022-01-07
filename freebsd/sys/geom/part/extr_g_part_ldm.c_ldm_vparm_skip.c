
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;



__attribute__((used)) static int
ldm_vparm_skip(const u_char *buf, int offset, size_t range)
{
 uint8_t len;

 len = buf[offset++];
 if (offset + len >= range)
  return (-1);

 return (offset + len);
}
