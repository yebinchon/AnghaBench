
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ROUNDUP (size_t) ;
 int memcpy (char*,void const*,size_t) ;
 int memset (char*,char,size_t) ;

__attribute__((used)) static size_t
memcpy_roundup(char *cp, const void *data, size_t len)
{
  size_t padlen;

  padlen = ROUNDUP(len);
  memcpy(cp, data, len);
  if (padlen > len)
    memset(cp + len, '\0', padlen - len);

  return padlen;
}
