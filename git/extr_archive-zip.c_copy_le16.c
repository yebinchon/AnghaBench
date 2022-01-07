
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void copy_le16(unsigned char *dest, unsigned int n)
{
 dest[0] = 0xff & n;
 dest[1] = 0xff & (n >> 010);
}
