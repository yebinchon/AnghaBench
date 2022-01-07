
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
clob1(int n)
{
 char buf[512];
 char *cp;

 if (n <= 0)
  return;
 for (cp = buf; cp < &buf[512]; *cp++ = 0xFF)
  ;
 clob1(n - 1);
}
