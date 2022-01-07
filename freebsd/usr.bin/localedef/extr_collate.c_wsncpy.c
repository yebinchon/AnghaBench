
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int htote (int ) ;

wchar_t *
wsncpy(wchar_t *s1, const wchar_t *s2, size_t n)
{
 wchar_t *os1 = s1;

 n++;
 while (--n > 0 && (*s1++ = htote(*s2++)) != 0)
  continue;
 if (n > 0)
  while (--n > 0)
   *s1++ = 0;
 return (os1);
}
