
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;


 scalar_t__ memcmp (unsigned char const*,unsigned char const*,size_t) ;

int
mkuz_memvcmp(const void *memory, unsigned char val, size_t size)
{
    const u_char *mm;

    mm = (const u_char *)memory;
    return (*mm == val) && memcmp(mm, mm + 1, size - 1) == 0;
}
