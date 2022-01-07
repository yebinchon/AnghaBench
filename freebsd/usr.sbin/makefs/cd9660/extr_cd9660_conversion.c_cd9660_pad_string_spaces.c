
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
cd9660_pad_string_spaces(char *str, int len)
{
 int i;

 for (i = 0; i < len; i ++) {
  if (str[i] == '\0')
   str[i] = 0x20;
 }
}
