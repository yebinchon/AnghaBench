
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_ocb {int * ccb; } ;
struct sbp_dev {int free_ocbs; int flags; TYPE_1__* target; } ;
struct TYPE_2__ {int sbp; } ;


 int ORB_SHORTAGE ;
 int SBP_LOCK_ASSERT (int ) ;
 struct sbp_ocb* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,struct sbp_ocb*) ;
 int printf (char*) ;

__attribute__((used)) static struct sbp_ocb *
sbp_get_ocb(struct sbp_dev *sdev)
{
 struct sbp_ocb *ocb;

 SBP_LOCK_ASSERT(sdev->target->sbp);
 ocb = STAILQ_FIRST(&sdev->free_ocbs);
 if (ocb == ((void*)0)) {
  sdev->flags |= ORB_SHORTAGE;
  printf("ocb shortage!!!\n");
  return ((void*)0);
 }
 STAILQ_REMOVE_HEAD(&sdev->free_ocbs, ocb);
 ocb->ccb = ((void*)0);
 return (ocb);
}
