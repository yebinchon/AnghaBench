
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_ocb {int * ccb; scalar_t__ flags; } ;
struct sbp_dev {int flags; int freeze; int path; int free_ocbs; TYPE_1__* target; } ;
struct TYPE_2__ {int sbp; } ;


 int ORB_SHORTAGE ;
 int SBP_LOCK_ASSERT (int ) ;
 int STAILQ_INSERT_TAIL (int *,struct sbp_ocb*,struct sbp_ocb*) ;
 int TRUE ;
 int xpt_release_devq (int ,int,int ) ;

__attribute__((used)) static void
sbp_free_ocb(struct sbp_dev *sdev, struct sbp_ocb *ocb)
{
 ocb->flags = 0;
 ocb->ccb = ((void*)0);

 SBP_LOCK_ASSERT(sdev->target->sbp);
 STAILQ_INSERT_TAIL(&sdev->free_ocbs, ocb, ocb);
 if ((sdev->flags & ORB_SHORTAGE) != 0) {
  int count;

  sdev->flags &= ~ORB_SHORTAGE;
  count = sdev->freeze;
  sdev->freeze = 0;
  xpt_release_devq(sdev->path, count, TRUE);
 }
}
