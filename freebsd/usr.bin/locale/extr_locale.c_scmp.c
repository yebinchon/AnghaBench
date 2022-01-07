
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int
scmp(const void *s1, const void *s2)
{
 return strcmp(*(const char * const *)s1, *(const char * const *)s2);
}
