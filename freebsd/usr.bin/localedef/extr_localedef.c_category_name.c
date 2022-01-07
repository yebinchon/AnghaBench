
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTERR ;
 int get_category () ;

const char *
category_name(void)
{
 switch (get_category()) {
 case 135:
  return ("CHARMAP");
 case 128:
  return ("WIDTH");
 case 134:
  return ("LC_COLLATE");
 case 133:
  return ("LC_CTYPE");
 case 132:
  return ("LC_MESSAGES");
 case 131:
  return ("LC_MONETARY");
 case 130:
  return ("LC_NUMERIC");
 case 129:
  return ("LC_TIME");
 default:
  INTERR;
  return (((void*)0));
 }
}
