
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
j2g(int year)
{
 return (year < 1500) ?
  0 :
  10 + (year/100 - 16) - ((year/100 - 16) / 4);
}
