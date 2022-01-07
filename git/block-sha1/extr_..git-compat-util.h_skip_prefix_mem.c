
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline int skip_prefix_mem(const char *buf, size_t len,
      const char *prefix,
      const char **out, size_t *outlen)
{
 size_t prefix_len = strlen(prefix);
 if (prefix_len <= len && !memcmp(buf, prefix, prefix_len)) {
  *out = buf + prefix_len;
  *outlen = len - prefix_len;
  return 1;
 }
 return 0;
}
