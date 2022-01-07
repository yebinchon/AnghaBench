
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* bus_alloc_resource (int ,int,int*,int ,int ,int ,int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;

__attribute__((used)) static int ct_is_free_res (device_t dev, int rid, int type, rman_res_t start,
 rman_res_t end, rman_res_t count)
{
 struct resource *res;

 if (!(res = bus_alloc_resource (dev, type, &rid, start, end, count, 0)))
  return 0;

 bus_release_resource (dev, type, rid, res);

 return 1;
}
