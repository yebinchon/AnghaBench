
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;


 int htole16 (int ) ;

void
smb_strtouni(u_int16_t *dst, const char *src)
{
 while (*src) {
  *dst++ = htole16(*src++);
 }
 *dst = 0;
}
