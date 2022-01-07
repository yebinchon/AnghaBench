
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; int wqe_shift; } ;
struct mthca_qp {int wrid; int mr; int is_direct; int queue; TYPE_1__ sq; scalar_t__ send_wqe_offset; } ;
struct mthca_dev {int dummy; } ;


 int PAGE_ALIGN (scalar_t__) ;
 int kfree (int ) ;
 int mthca_buf_free (struct mthca_dev*,int ,int *,int ,int *) ;

__attribute__((used)) static void mthca_free_wqe_buf(struct mthca_dev *dev,
          struct mthca_qp *qp)
{
 mthca_buf_free(dev, PAGE_ALIGN(qp->send_wqe_offset +
           (qp->sq.max << qp->sq.wqe_shift)),
         &qp->queue, qp->is_direct, &qp->mr);
 kfree(qp->wrid);
}
