
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mthca_ucontext {int db_tab; int uar; } ;
struct ib_srq {int device; TYPE_1__* uobject; } ;
struct TYPE_5__ {int db_index; } ;
struct TYPE_4__ {int context; } ;


 int kfree (struct ib_srq*) ;
 int mthca_free_srq (int ,TYPE_2__*) ;
 int mthca_unmap_user_db (int ,int *,int ,int ) ;
 int to_mdev (int ) ;
 TYPE_2__* to_msrq (struct ib_srq*) ;
 struct mthca_ucontext* to_mucontext (int ) ;

__attribute__((used)) static int mthca_destroy_srq(struct ib_srq *srq)
{
 struct mthca_ucontext *context;

 if (srq->uobject) {
  context = to_mucontext(srq->uobject->context);

  mthca_unmap_user_db(to_mdev(srq->device), &context->uar,
        context->db_tab, to_msrq(srq)->db_index);
 }

 mthca_free_srq(to_mdev(srq->device), to_msrq(srq));
 kfree(srq);

 return 0;
}
