
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtentry {scalar_t__ rt_weight; } ;
struct radix_node {int dummy; } ;


 struct radix_node* rn_mpath_next (struct radix_node*) ;

uint32_t
rn_mpath_count(struct radix_node *rn)
{
 uint32_t i = 0;
 struct rtentry *rt;

 while (rn != ((void*)0)) {
  rt = (struct rtentry *)rn;
  i += rt->rt_weight;
  rn = rn_mpath_next(rn);
 }
 return (i);
}
