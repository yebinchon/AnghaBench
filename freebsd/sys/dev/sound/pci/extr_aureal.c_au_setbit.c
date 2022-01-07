
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;



__attribute__((used)) static void
au_setbit(u_int32_t *p, char bit, u_int32_t value)
{
 p += bit >> 5;
 bit &= 0x1f;
 *p &= ~ (1 << bit);
 *p |= (value << bit);
}
