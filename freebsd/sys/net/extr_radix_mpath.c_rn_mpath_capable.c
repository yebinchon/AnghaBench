
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rib_head {int dummy; } ;
struct radix_head {int dummy; } ;


 int rt_mpath_capable (struct rib_head*) ;

int
rn_mpath_capable(struct radix_head *rh)
{

 return (rt_mpath_capable((struct rib_head *)rh));
}
