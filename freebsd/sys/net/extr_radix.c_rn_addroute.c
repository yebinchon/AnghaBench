
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_node {short rn_bit; scalar_t__ rn_key; scalar_t__ rn_mask; int rn_flags; scalar_t__ rn_mklist; struct radix_node* rn_parent; struct radix_node* rn_dupedkey; struct radix_node* rn_right; struct radix_node* rn_left; struct radix_node* rn_ybro; struct radix_node* rn_twin; scalar_t__ rn_info; int rn_offset; } ;
struct radix_mask {short rm_bit; int rm_flags; scalar_t__ rm_mask; int rm_refs; TYPE_1__* rm_leaf; struct radix_mask* rm_mklist; } ;
struct radix_head {int rnh_masks; struct radix_node* rnh_treetop; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ rn_mask; } ;


 int LOG_ERR ;
 int RNF_ACTIVE ;
 int RNF_NORMAL ;
 int log (int ,char*) ;
 struct radix_node* rn_addmask (scalar_t__,int ,int ,int ) ;
 struct radix_node* rn_clist ;
 struct radix_node* rn_insert (scalar_t__,struct radix_head*,int*,struct radix_node*) ;
 scalar_t__ rn_lexobetter (scalar_t__,scalar_t__) ;
 scalar_t__ rn_mpath_capable (struct radix_head*) ;
 struct radix_mask* rn_new_radix_mask (struct radix_node*,struct radix_mask*) ;
 int rn_nodenum ;
 scalar_t__ rn_refines (scalar_t__,scalar_t__) ;

struct radix_node *
rn_addroute(void *v_arg, void *n_arg, struct radix_head *head,
    struct radix_node treenodes[2])
{
 caddr_t v = (caddr_t)v_arg, netmask = (caddr_t)n_arg;
 struct radix_node *t, *x = ((void*)0), *tt;
 struct radix_node *saved_tt, *top = head->rnh_treetop;
 short b = 0, b_leaf = 0;
 int keyduplicated;
 caddr_t mmask;
 struct radix_mask *m, **mp;
 if (netmask) {
  x = rn_addmask(netmask, head->rnh_masks, 0, top->rn_offset);
  if (x == ((void*)0))
   return (0);
  b_leaf = x->rn_bit;
  b = -1 - x->rn_bit;
  netmask = x->rn_key;
 }



 saved_tt = tt = rn_insert(v, head, &keyduplicated, treenodes);
 if (keyduplicated) {
  for (t = tt; tt; t = tt, tt = tt->rn_dupedkey) {
   if (tt->rn_mask == netmask)
    return (0);
   if (netmask == 0 ||
       (tt->rn_mask &&
        ((b_leaf < tt->rn_bit)
         || rn_refines(netmask, tt->rn_mask)
         || rn_lexobetter(netmask, tt->rn_mask))))
    break;
  }
  if (tt == saved_tt) {
   struct radix_node *xx = x;

   (tt = treenodes)->rn_dupedkey = t;
   tt->rn_flags = t->rn_flags;
   tt->rn_parent = x = t->rn_parent;
   t->rn_parent = tt;
   if (x->rn_left == t)
    x->rn_left = tt;
   else
    x->rn_right = tt;
   saved_tt = tt; x = xx;
  } else {
   (tt = treenodes)->rn_dupedkey = t->rn_dupedkey;
   t->rn_dupedkey = tt;
   tt->rn_parent = t;
   if (tt->rn_dupedkey)
    tt->rn_dupedkey->rn_parent = tt;
  }




  tt->rn_key = (caddr_t) v;
  tt->rn_bit = -1;
  tt->rn_flags = RNF_ACTIVE;
 }



 if (netmask) {
  tt->rn_mask = netmask;
  tt->rn_bit = x->rn_bit;
  tt->rn_flags |= x->rn_flags & RNF_NORMAL;
 }
 t = saved_tt->rn_parent;
 if (keyduplicated)
  goto on2;
 b_leaf = -1 - t->rn_bit;
 if (t->rn_right == saved_tt)
  x = t->rn_left;
 else
  x = t->rn_right;

 if (x->rn_bit < 0) {
     for (mp = &t->rn_mklist; x; x = x->rn_dupedkey)
  if (x->rn_mask && (x->rn_bit >= b_leaf) && x->rn_mklist == 0) {
   *mp = m = rn_new_radix_mask(x, 0);
   if (m)
    mp = &m->rm_mklist;
  }
 } else if (x->rn_mklist) {



  for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist)
   if (m->rm_bit >= b_leaf)
    break;
  t->rn_mklist = m; *mp = ((void*)0);
 }
on2:

 if ((netmask == 0) || (b > t->rn_bit ))
  return (tt);
 b_leaf = tt->rn_bit;
 do {
  x = t;
  t = t->rn_parent;
 } while (b <= t->rn_bit && x != top);






 for (mp = &x->rn_mklist; (m = *mp); mp = &m->rm_mklist) {
  if (m->rm_bit < b_leaf)
   continue;
  if (m->rm_bit > b_leaf)
   break;
  if (m->rm_flags & RNF_NORMAL) {
   mmask = m->rm_leaf->rn_mask;
   if (tt->rn_flags & RNF_NORMAL) {

       log(LOG_ERR,
           "Non-unique normal route, mask not entered\n");

    return (tt);
   }
  } else
   mmask = m->rm_mask;
  if (mmask == netmask) {
   m->rm_refs++;
   tt->rn_mklist = m;
   return (tt);
  }
  if (rn_refines(netmask, mmask)
      || rn_lexobetter(netmask, mmask))
   break;
 }
 *mp = rn_new_radix_mask(tt, *mp);
 return (tt);
}
