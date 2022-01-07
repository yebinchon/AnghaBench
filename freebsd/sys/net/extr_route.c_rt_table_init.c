
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rnh_masks; } ;
struct TYPE_3__ {int mask_nodes; TYPE_2__ head; } ;
struct rib_head {int rnh_walktree_from; int rnh_walktree; int rnh_lookup; int rnh_matchaddr; int rnh_deladdr; int rnh_addaddr; TYPE_1__ rmhead; TYPE_2__ head; int rnh_nodes; } ;


 int M_RTABLE ;
 int M_WAITOK ;
 int M_ZERO ;
 int RIB_LOCK_INIT (struct rib_head*) ;
 struct rib_head* malloc (int,int ,int) ;
 int rn_addroute ;
 int rn_delete ;
 int rn_inithead_internal (TYPE_2__*,int ,int) ;
 int rn_lookup ;
 int rn_match ;
 int rn_walktree ;
 int rn_walktree_from ;

struct rib_head *
rt_table_init(int offset)
{
 struct rib_head *rh;

 rh = malloc(sizeof(struct rib_head), M_RTABLE, M_WAITOK | M_ZERO);



 rn_inithead_internal(&rh->head, rh->rnh_nodes, offset);
 rn_inithead_internal(&rh->rmhead.head, rh->rmhead.mask_nodes, 0);
 rh->head.rnh_masks = &rh->rmhead;


 RIB_LOCK_INIT(rh);


 rh->rnh_addaddr = rn_addroute;
 rh->rnh_deladdr = rn_delete;
 rh->rnh_matchaddr = rn_match;
 rh->rnh_lookup = rn_lookup;
 rh->rnh_walktree = rn_walktree;
 rh->rnh_walktree_from = rn_walktree_from;

 return (rh);
}
