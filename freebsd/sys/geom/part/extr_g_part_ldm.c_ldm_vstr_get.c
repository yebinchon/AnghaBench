
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t u_char ;


 int memcpy (size_t*,size_t const*,size_t) ;

__attribute__((used)) static int
ldm_vstr_get(const u_char *buf, int offset, u_char *result,
    size_t maxlen, size_t range)
{
 uint8_t len;

 len = buf[offset++];
 if (len >= maxlen || len + offset >= range)
  return (-1);
 memcpy(result, buf + offset, len);
 result[len] = '\0';
 return (offset + len);
}
