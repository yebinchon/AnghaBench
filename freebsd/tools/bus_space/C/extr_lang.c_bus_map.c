
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_map (char const*,char const*) ;

int
bus_map(const char *dev, const char *resource)
{

 return (bs_map(dev, resource));
}
