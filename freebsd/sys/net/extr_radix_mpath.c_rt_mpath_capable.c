
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rib_head {int rnh_multipath; } ;



int
rt_mpath_capable(struct rib_head *rnh)
{

 return rnh->rnh_multipath;
}
