
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_GET_DOMAIN (int ,int ,int*) ;
 int device_get_parent (int ) ;

int
bus_get_domain(device_t dev, int *domain)
{
 return (BUS_GET_DOMAIN(device_get_parent(dev), dev, domain));
}
