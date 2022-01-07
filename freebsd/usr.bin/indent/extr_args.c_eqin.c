
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
eqin(const char *s1, const char *s2)
{
    while (*s1) {
 if (*s1++ != *s2++)
     return (((void*)0));
    }
    return (s2);
}
