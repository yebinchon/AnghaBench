
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag_desc {int flag; scalar_t__ name; } ;


 struct flag_desc* gpio_flags ;
 scalar_t__ strcasecmp (char const*,scalar_t__) ;

int
str2cap(const char *str)
{
 struct flag_desc * pdesc = gpio_flags;
 while (pdesc->name) {
  if (strcasecmp(str, pdesc->name) == 0)
   return pdesc->flag;
  pdesc++;
 }

 return (-1);
}
