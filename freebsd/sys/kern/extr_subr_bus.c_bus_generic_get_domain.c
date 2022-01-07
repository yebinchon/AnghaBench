
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_5__ {scalar_t__ parent; } ;


 int BUS_GET_DOMAIN (scalar_t__,TYPE_1__*,int*) ;
 int ENOENT ;

int
bus_generic_get_domain(device_t dev, device_t child, int *domain)
{

 if (dev->parent)
  return (BUS_GET_DOMAIN(dev->parent, dev, domain));

 return (ENOENT);
}
