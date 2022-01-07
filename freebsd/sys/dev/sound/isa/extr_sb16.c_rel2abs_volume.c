
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
rel2abs_volume(int x, int max)
{
 int temp;

 temp = ((x * max) + 50) / 100;
 if (temp > max)
  temp = max;
 else if (temp < 0)
  temp = 0;
 return (temp);
}
