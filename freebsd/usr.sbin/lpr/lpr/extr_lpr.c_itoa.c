
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
itoa(int i)
{
 static char b[10] = "########";
 register char *p;

 p = &b[8];
 do
  *p-- = i%10 + '0';
 while (i /= 10);
 return(++p);
}
