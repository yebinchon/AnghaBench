
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtentry {int dummy; } ;
struct radix_node {int dummy; } ;


 int * rn_mpath_next (struct radix_node*) ;
 struct rtentry* rt_mpath_selectrte (struct rtentry*,int ) ;

struct rtentry *
rt_mpath_select(struct rtentry *rte, uint32_t hash)
{
 if (rn_mpath_next((struct radix_node *)rte) == ((void*)0))
  return (rte);

 return (rt_mpath_selectrte(rte, hash));
}
