
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {scalar_t__ rn_mask; struct radix_node* rn_dupedkey; } ;



struct radix_node *
rn_mpath_next(struct radix_node *rn)
{
 struct radix_node *next;

 if (!rn->rn_dupedkey)
  return ((void*)0);
 next = rn->rn_dupedkey;
 if (rn->rn_mask == next->rn_mask)
  return next;
 else
  return ((void*)0);
}
