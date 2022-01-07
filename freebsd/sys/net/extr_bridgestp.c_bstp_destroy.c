
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_port {scalar_t__ bp_active; TYPE_1__* bp_bs; int bp_mediatask; int bp_rtagetask; int bp_statetask; } ;
struct TYPE_2__ {struct bstp_port* bs_root_port; } ;


 int KASSERT (int,char*) ;
 int bstp_assign_roles (TYPE_1__*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

void
bstp_destroy(struct bstp_port *bp)
{
 KASSERT(bp->bp_active == 0, ("port is still attached"));
 taskqueue_drain(taskqueue_swi, &bp->bp_statetask);
 taskqueue_drain(taskqueue_swi, &bp->bp_rtagetask);
 taskqueue_drain(taskqueue_swi, &bp->bp_mediatask);

 if (bp->bp_bs->bs_root_port == bp)
  bstp_assign_roles(bp->bp_bs);
}
