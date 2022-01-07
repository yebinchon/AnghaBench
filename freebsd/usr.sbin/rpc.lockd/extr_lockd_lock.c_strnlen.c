
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strnlen(const char *s, size_t len)
{
    size_t n;

    for (n = 0; s[n] != 0 && n < len; n++)
        ;
    return n;
}
