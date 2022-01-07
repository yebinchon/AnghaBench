
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline int strip_suffix_mem(const char *buf, size_t *len,
       const char *suffix)
{
 size_t suflen = strlen(suffix);
 if (*len < suflen || memcmp(buf + (*len - suflen), suffix, suflen))
  return 0;
 *len -= suflen;
 return 1;
}
