
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef size_t u_char ;



__attribute__((used)) static int
scanc(u_int size, const u_char *cp, const u_char table[], int mask)
{
 const u_char *end = &cp[size];

 while (cp < end && (table[*cp] & mask) == 0)
  cp++;
 return (end - cp);
}
