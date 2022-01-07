
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
typedef int rman_res_t ;
typedef int device_t ;


 struct resource* rman_reserve_resource_bound (struct rman*,int ,int ,int ,int ,int ,int ) ;

struct resource *
rman_reserve_resource(struct rman *rm, rman_res_t start, rman_res_t end,
        rman_res_t count, u_int flags, device_t dev)
{

 return (rman_reserve_resource_bound(rm, start, end, count, 0, flags,
     dev));
}
