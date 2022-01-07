
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
usb_trim_spaces(char *p)
{
 char *q;
 char *e;

 if (p == ((void*)0))
  return;
 q = e = p;
 while (*q == ' ')
  q++;
 while ((*p = *q++))
  if (*p++ != ' ')
   e = p;
 *e = 0;
}
