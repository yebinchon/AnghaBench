
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
udf_isaleapyear(int year)
{
 int i;

 i = (year % 4) ? 0 : 1;
 i &= (year % 100) ? 1 : 0;
 i |= (year % 400) ? 0 : 1;

 return i;
}
