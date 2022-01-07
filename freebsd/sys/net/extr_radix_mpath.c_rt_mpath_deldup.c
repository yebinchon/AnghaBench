
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int dummy; } ;
struct radix_node {int rn_flags; int * rn_dupedkey; } ;


 int RNF_ACTIVE ;
 struct radix_node* rn_mpath_next (struct radix_node*) ;

int
rt_mpath_deldup(struct rtentry *headrt, struct rtentry *rt)
{
        struct radix_node *t, *tt;

        if (!headrt || !rt)
            return (0);
        t = (struct radix_node *)headrt;
        tt = rn_mpath_next(t);
        while (tt) {
            if (tt == (struct radix_node *)rt) {
                t->rn_dupedkey = tt->rn_dupedkey;
                tt->rn_dupedkey = ((void*)0);
             tt->rn_flags &= ~RNF_ACTIVE;
         tt[1].rn_flags &= ~RNF_ACTIVE;
                return (1);
            }
            t = tt;
            tt = rn_mpath_next((struct radix_node *)t);
        }
        return (0);
}
