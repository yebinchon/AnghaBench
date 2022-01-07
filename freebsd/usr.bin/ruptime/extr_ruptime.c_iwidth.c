
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
iwidth(int w)
{
 if (w < 10)
  return (1);
 if (w < 100)
  return (2);
 if (w < 1000)
  return (3);
 if (w < 10000)
  return (4);
 return (5);
}
