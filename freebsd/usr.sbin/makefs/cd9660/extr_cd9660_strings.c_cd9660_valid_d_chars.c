
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cd9660_is_d_char (char const) ;
 scalar_t__ islower (unsigned char) ;

int
cd9660_valid_d_chars(const char *str)
{
 const char *c=str;
 int upperFound = 0;

 while ((*c) != '\0') {
  if (!(cd9660_is_d_char(*c))) {
   if (islower((unsigned char)*c) )
    upperFound = 1;
   else
    return 0;
  }
  c++;
 }
 return upperFound + 1;
}
