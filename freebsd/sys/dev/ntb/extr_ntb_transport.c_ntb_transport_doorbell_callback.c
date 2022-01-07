
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ntb_transport_qp {int rxc_db_work; int rxc_tq; scalar_t__ link_is_up; } ;
struct ntb_transport_ctx {int qp_bitmap; struct ntb_transport_qp* qp_vec; int dev; } ;


 int ffsll (int) ;
 int ntb_db_clear (int ,int) ;
 int ntb_db_read (int ) ;
 int ntb_db_set_mask (int ,int) ;
 int ntb_db_vector_mask (int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ntb_transport_doorbell_callback(void *data, uint32_t vector)
{
 struct ntb_transport_ctx *nt = data;
 struct ntb_transport_qp *qp;
 uint64_t vec_mask;
 unsigned qp_num;

 vec_mask = ntb_db_vector_mask(nt->dev, vector);
 vec_mask &= nt->qp_bitmap;
 if ((vec_mask & (vec_mask - 1)) != 0)
  vec_mask &= ntb_db_read(nt->dev);
 if (vec_mask != 0) {
  ntb_db_set_mask(nt->dev, vec_mask);
  ntb_db_clear(nt->dev, vec_mask);
 }
 while (vec_mask != 0) {
  qp_num = ffsll(vec_mask) - 1;

  qp = &nt->qp_vec[qp_num];
  if (qp->link_is_up)
   taskqueue_enqueue(qp->rxc_tq, &qp->rxc_db_work);

  vec_mask &= ~(1ull << qp_num);
 }
}
