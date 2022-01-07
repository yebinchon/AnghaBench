
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int rn_bit; int rn_bmask; int rn_offset; struct radix_node* rn_ybro; struct radix_node* rn_twin; scalar_t__ rn_info; scalar_t__ rn_mklist; int rn_flags; struct radix_node* rn_parent; scalar_t__ rn_key; int * rn_dupedkey; int * rn_mask; int * rn_right; struct radix_node* rn_left; } ;
typedef scalar_t__ caddr_t ;


 int RNF_ACTIVE ;
 struct radix_node* rn_clist ;
 int rn_nodenum ;

__attribute__((used)) static struct radix_node *
rn_newpair(void *v, int b, struct radix_node nodes[2])
{
 struct radix_node *tt = nodes, *t = tt + 1;
 t->rn_bit = b;
 t->rn_bmask = 0x80 >> (b & 7);
 t->rn_left = tt;
 t->rn_offset = b >> 3;
 tt->rn_bit = -1;
 tt->rn_key = (caddr_t)v;
 tt->rn_parent = t;
 tt->rn_flags = t->rn_flags = RNF_ACTIVE;
 tt->rn_mklist = t->rn_mklist = 0;






 return (t);
}
