
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 struct rman* nexus_rman (int) ;
 int rman_adjust_resource (struct resource*,int ,int ) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;

__attribute__((used)) static int
nexus_adjust_resource(device_t bus, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct rman *rm;

 rm = nexus_rman(type);
 if (rm == ((void*)0))
  return (ENXIO);
 if (!rman_is_region_manager(r, rm))
  return (EINVAL);
 return (rman_adjust_resource(r, start, end));
}
