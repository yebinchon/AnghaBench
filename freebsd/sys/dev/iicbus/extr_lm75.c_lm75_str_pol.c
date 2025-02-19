
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
lm75_str_pol(char *buf)
{
 int len, rtrn;

 rtrn = -1;
 len = strlen(buf);
 if (len > 1 && strncasecmp("high", buf, len) == 0)
  rtrn = 1;
 else if (len > 1 && strncasecmp("low", buf, len) == 0)
  rtrn = 0;
 else if (len > 8 && strncasecmp("active-high", buf, len) == 0)
  rtrn = 1;
 else if (len > 8 && strncasecmp("active-low", buf, len) == 0)
  rtrn = 0;

 return (rtrn);
}
