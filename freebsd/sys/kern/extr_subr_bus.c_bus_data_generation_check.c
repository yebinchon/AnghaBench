
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_data_generation ;

int
bus_data_generation_check(int generation)
{
 if (generation != bus_data_generation)
  return (1);


 return (0);
}
