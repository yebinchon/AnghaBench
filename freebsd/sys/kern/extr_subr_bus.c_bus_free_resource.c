
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int bus_release_resource (int ,int,int ,struct resource*) ;
 int rman_get_rid (struct resource*) ;

int
bus_free_resource(device_t dev, int type, struct resource *r)
{
 if (r == ((void*)0))
  return (0);
 return (bus_release_resource(dev, type, rman_get_rid(r), r));
}
