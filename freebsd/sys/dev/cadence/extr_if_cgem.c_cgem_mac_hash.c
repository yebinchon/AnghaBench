
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
cgem_mac_hash(u_char eaddr[])
{
 int hash;
 int i, j;

 hash = 0;
 for (i = 0; i < 6; i++)
  for (j = i; j < 48; j += 6)
   if ((eaddr[j >> 3] & (1 << (j & 7))) != 0)
    hash ^= (1 << i);

 return hash;
}
