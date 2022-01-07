
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_cq {int device; TYPE_1__* uobject; } ;
struct TYPE_7__ {int set_ci_db_index; int arm_db_index; } ;
struct TYPE_6__ {int db_tab; int uar; } ;
struct TYPE_5__ {int context; } ;


 int kfree (struct ib_cq*) ;
 int mthca_free_cq (int ,TYPE_3__*) ;
 int mthca_unmap_user_db (int ,int *,int ,int ) ;
 TYPE_3__* to_mcq (struct ib_cq*) ;
 int to_mdev (int ) ;
 TYPE_2__* to_mucontext (int ) ;

__attribute__((used)) static int mthca_destroy_cq(struct ib_cq *cq)
{
 if (cq->uobject) {
  mthca_unmap_user_db(to_mdev(cq->device),
        &to_mucontext(cq->uobject->context)->uar,
        to_mucontext(cq->uobject->context)->db_tab,
        to_mcq(cq)->arm_db_index);
  mthca_unmap_user_db(to_mdev(cq->device),
        &to_mucontext(cq->uobject->context)->uar,
        to_mucontext(cq->uobject->context)->db_tab,
        to_mcq(cq)->set_ci_db_index);
 }
 mthca_free_cq(to_mdev(cq->device), to_mcq(cq));
 kfree(cq);

 return 0;
}
