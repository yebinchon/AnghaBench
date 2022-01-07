
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {int rn_flags; int rn_bit; int rn_key; struct radix_node* rn_left; struct radix_node* rn_parent; struct radix_node* rn_right; } ;
struct radix_head {struct radix_node* rnh_treetop; } ;


 int RNF_ACTIVE ;
 int RNF_ROOT ;
 struct radix_node* rn_newpair (int ,int,struct radix_node*) ;
 int rn_ones ;
 int rn_zeros ;

void
rn_inithead_internal(struct radix_head *rh, struct radix_node *base_nodes, int off)
{
 struct radix_node *t, *tt, *ttt;

 t = rn_newpair(rn_zeros, off, base_nodes);
 ttt = base_nodes + 2;
 t->rn_right = ttt;
 t->rn_parent = t;
 tt = t->rn_left;
 tt->rn_flags = t->rn_flags = RNF_ROOT | RNF_ACTIVE;
 tt->rn_bit = -1 - off;
 *ttt = *tt;
 ttt->rn_key = rn_ones;

 rh->rnh_treetop = t;
}
