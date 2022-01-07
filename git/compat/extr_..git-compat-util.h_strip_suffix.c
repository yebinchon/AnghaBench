
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strip_suffix_mem (char const*,size_t*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline int strip_suffix(const char *str, const char *suffix, size_t *len)
{
 *len = strlen(str);
 return strip_suffix_mem(str, len, suffix);
}
