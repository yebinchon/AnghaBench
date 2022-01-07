
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rtentry {scalar_t__ rt_weight; } ;
struct radix_node {scalar_t__ rn_mask; struct radix_node* rn_dupedkey; } ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;


 scalar_t__ abs (int ) ;
 scalar_t__ hashjitter ;
 scalar_t__ rn_mpath_count (struct radix_node*) ;

__attribute__((used)) static struct rtentry *
rt_mpath_selectrte(struct rtentry *rte, uint32_t hash)
{
 struct radix_node *rn0, *rn;
 uint32_t total_weight;
 struct rtentry *rt;
 int64_t weight;


 rn0 = rn = (struct radix_node *)rte;
 rt = rte;


 total_weight = rn_mpath_count(rn0);
 hash += hashjitter;
 hash %= total_weight;
 for (weight = abs((int32_t)hash);
      rt != ((void*)0) && weight >= rt->rt_weight;
      weight -= (rt == ((void*)0)) ? 0 : rt->rt_weight) {


  if (rn->rn_dupedkey && rn->rn_mask != rn->rn_dupedkey->rn_mask)
   break;
  rn = rn->rn_dupedkey;
  rt = (struct rtentry *)rn;
 }

 return (rt);
}
