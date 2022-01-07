
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int next_uuar(int n)
{
 n++;

 while (((n % 4) & 2))
  n++;

 return n;
}
