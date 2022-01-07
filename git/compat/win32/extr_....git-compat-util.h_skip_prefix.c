
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int skip_prefix(const char *str, const char *prefix,
         const char **out)
{
 do {
  if (!*prefix) {
   *out = str;
   return 1;
  }
 } while (*str++ == *prefix++);
 return 0;
}
