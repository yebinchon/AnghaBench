
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;
struct mthca_cq_buf {int mr; int is_direct; int queue; } ;


 int MTHCA_CQ_ENTRY_SIZE ;
 int mthca_buf_free (struct mthca_dev*,int,int *,int ,int *) ;

void mthca_free_cq_buf(struct mthca_dev *dev, struct mthca_cq_buf *buf, int cqe)
{
 mthca_buf_free(dev, (cqe + 1) * MTHCA_CQ_ENTRY_SIZE, &buf->queue,
         buf->is_direct, &buf->mr);
}
