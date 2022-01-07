
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
int2bcd(int i)
{
 int retval = 0;
 int base = 0;

 if (i >= 10000)
  return -1;

 while (i) {
  retval |= (i % 10) << base;
  i /= 10;
  base += 4;
 }
 return retval;
}
