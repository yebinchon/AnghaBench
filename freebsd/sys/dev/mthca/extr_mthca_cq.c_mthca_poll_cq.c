
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mthca_qp {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct mthca_cq_buf {int dummy; } ;
struct TYPE_3__ {int cqe; } ;
struct mthca_cq {int cons_index; int lock; TYPE_2__* resize_buf; TYPE_1__ ibcq; struct mthca_cq_buf buf; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int device; } ;
struct TYPE_4__ {scalar_t__ state; int cqe; struct mthca_cq_buf buf; } ;


 scalar_t__ CQ_RESIZE_READY ;
 scalar_t__ CQ_RESIZE_SWAPPED ;
 int EAGAIN ;
 scalar_t__ cqe_sw (int ) ;
 int get_cqe_from_buf (struct mthca_cq_buf*,int) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mthca_poll_one (struct mthca_dev*,struct mthca_cq*,struct mthca_qp**,int*,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mthca_cq* to_mcq (struct ib_cq*) ;
 struct mthca_dev* to_mdev (int ) ;
 scalar_t__ unlikely (int) ;
 int update_cons_index (struct mthca_dev*,struct mthca_cq*,int) ;
 int wmb () ;

int mthca_poll_cq(struct ib_cq *ibcq, int num_entries,
    struct ib_wc *entry)
{
 struct mthca_dev *dev = to_mdev(ibcq->device);
 struct mthca_cq *cq = to_mcq(ibcq);
 struct mthca_qp *qp = ((void*)0);
 unsigned long flags;
 int err = 0;
 int freed = 0;
 int npolled;

 spin_lock_irqsave(&cq->lock, flags);

 npolled = 0;
repoll:
 while (npolled < num_entries) {
  err = mthca_poll_one(dev, cq, &qp,
         &freed, entry + npolled);
  if (err)
   break;
  ++npolled;
 }

 if (freed) {
  wmb();
  update_cons_index(dev, cq, freed);
 }







 if (unlikely(err == -EAGAIN && cq->resize_buf &&
       cq->resize_buf->state == CQ_RESIZE_READY)) {







  if (!mthca_is_memfree(dev))
   cq->cons_index &= cq->ibcq.cqe;

  if (cqe_sw(get_cqe_from_buf(&cq->resize_buf->buf,
         cq->cons_index & cq->resize_buf->cqe))) {
   struct mthca_cq_buf tbuf;
   int tcqe;

   tbuf = cq->buf;
   tcqe = cq->ibcq.cqe;
   cq->buf = cq->resize_buf->buf;
   cq->ibcq.cqe = cq->resize_buf->cqe;

   cq->resize_buf->buf = tbuf;
   cq->resize_buf->cqe = tcqe;
   cq->resize_buf->state = CQ_RESIZE_SWAPPED;

   goto repoll;
  }
 }

 spin_unlock_irqrestore(&cq->lock, flags);

 return err == 0 || err == -EAGAIN ? npolled : err;
}
