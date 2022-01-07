
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void __inline
lamecopy(uint8_t *dst, uint8_t *src, uint32_t len)
{
    while (len--)
 *dst++ = *src++;
}
