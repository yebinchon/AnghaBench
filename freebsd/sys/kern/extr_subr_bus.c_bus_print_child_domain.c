
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ BUS_GET_DOMAIN (int ,int ,int*) ;
 int printf (char*,int) ;

int
bus_print_child_domain(device_t dev, device_t child)
{
 int domain;


 if (BUS_GET_DOMAIN(dev, child, &domain) != 0)
  return (0);

 return (printf(" numa-domain %d", domain));
}
