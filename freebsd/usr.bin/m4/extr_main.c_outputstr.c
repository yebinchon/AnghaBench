
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHRSAVE (int ) ;
 int reallyoutputstr (char const*) ;
 scalar_t__ sp ;

void
outputstr(const char *s)
{
 if (sp < 0)
  reallyoutputstr(s);
 else
  while (*s)
   CHRSAVE(*s++);
}
