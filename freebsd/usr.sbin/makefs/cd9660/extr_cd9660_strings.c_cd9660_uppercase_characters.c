
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (unsigned char) ;

void
cd9660_uppercase_characters(char *str, int len)
{
 int p;

 for (p = 0; p < len; p++) {
  if (islower((unsigned char)str[p]) )
   str[p] -= 32;
 }
}
