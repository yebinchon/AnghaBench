
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mthca_ucontext {int db_tab; int uar; } ;
struct mthca_sqp {int dummy; } ;
struct ib_qp {int qp_num; } ;
struct TYPE_12__ {int max_gs; int max; int db_index; } ;
struct TYPE_11__ {int max_gs; int max; int db_index; } ;
struct TYPE_8__ {int lkey; } ;
struct TYPE_9__ {TYPE_1__ ibmr; } ;
struct mthca_qp {int qpn; struct ib_qp ibqp; int max_inline_data; TYPE_5__ rq; TYPE_4__ sq; TYPE_2__ mr; } ;
struct mthca_create_qp {int rq_db_index; int sq_db_index; int lkey; int rq_db_page; int sq_db_page; } ;
struct ib_udata {int dummy; } ;
struct TYPE_13__ {int max_inline_data; int max_recv_sge; int max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct ib_qp_init_attr {int qp_type; TYPE_6__ cap; int port_num; int sq_sig_type; int recv_cq; int send_cq; scalar_t__ create_flags; } ;
struct ib_pd {int device; TYPE_3__* uobject; } ;
struct TYPE_10__ {int context; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 struct ib_qp* ERR_PTR (int) ;
 int GFP_KERNEL ;





 int ib_copy_from_udata (struct mthca_create_qp*,struct ib_udata*,int) ;
 int kfree (struct mthca_qp*) ;
 struct mthca_qp* kmalloc (int,int ) ;
 int mthca_alloc_qp (int ,int ,int ,int ,int,int ,TYPE_6__*,struct mthca_qp*) ;
 int mthca_alloc_sqp (int ,int ,int ,int ,int ,TYPE_6__*,int,int ,int ) ;
 int mthca_map_user_db (int ,int *,int ,int ,int ) ;
 int mthca_unmap_user_db (int ,int *,int ,int ) ;
 int to_mcq (int ) ;
 int to_mdev (int ) ;
 int to_mpd (struct ib_pd*) ;
 int to_msqp (struct mthca_qp*) ;
 struct mthca_ucontext* to_mucontext (int ) ;

__attribute__((used)) static struct ib_qp *mthca_create_qp(struct ib_pd *pd,
         struct ib_qp_init_attr *init_attr,
         struct ib_udata *udata)
{
 struct mthca_create_qp ucmd;
 struct mthca_qp *qp;
 int err;

 if (init_attr->create_flags)
  return ERR_PTR(-EINVAL);

 switch (init_attr->qp_type) {
 case 131:
 case 129:
 case 128:
 {
  struct mthca_ucontext *context;

  qp = kmalloc(sizeof *qp, GFP_KERNEL);
  if (!qp)
   return ERR_PTR(-ENOMEM);

  if (pd->uobject) {
   context = to_mucontext(pd->uobject->context);

   if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd)) {
    kfree(qp);
    return ERR_PTR(-EFAULT);
   }

   err = mthca_map_user_db(to_mdev(pd->device), &context->uar,
      context->db_tab,
      ucmd.sq_db_index, ucmd.sq_db_page);
   if (err) {
    kfree(qp);
    return ERR_PTR(err);
   }

   err = mthca_map_user_db(to_mdev(pd->device), &context->uar,
      context->db_tab,
      ucmd.rq_db_index, ucmd.rq_db_page);
   if (err) {
    mthca_unmap_user_db(to_mdev(pd->device),
          &context->uar,
          context->db_tab,
          ucmd.sq_db_index);
    kfree(qp);
    return ERR_PTR(err);
   }

   qp->mr.ibmr.lkey = ucmd.lkey;
   qp->sq.db_index = ucmd.sq_db_index;
   qp->rq.db_index = ucmd.rq_db_index;
  }

  err = mthca_alloc_qp(to_mdev(pd->device), to_mpd(pd),
         to_mcq(init_attr->send_cq),
         to_mcq(init_attr->recv_cq),
         init_attr->qp_type, init_attr->sq_sig_type,
         &init_attr->cap, qp);

  if (err && pd->uobject) {
   context = to_mucontext(pd->uobject->context);

   mthca_unmap_user_db(to_mdev(pd->device),
         &context->uar,
         context->db_tab,
         ucmd.sq_db_index);
   mthca_unmap_user_db(to_mdev(pd->device),
         &context->uar,
         context->db_tab,
         ucmd.rq_db_index);
  }

  qp->ibqp.qp_num = qp->qpn;
  break;
 }
 case 130:
 case 132:
 {

  if (pd->uobject)
   return ERR_PTR(-EINVAL);

  qp = kmalloc(sizeof (struct mthca_sqp), GFP_KERNEL);
  if (!qp)
   return ERR_PTR(-ENOMEM);

  qp->ibqp.qp_num = init_attr->qp_type == 130 ? 0 : 1;

  err = mthca_alloc_sqp(to_mdev(pd->device), to_mpd(pd),
          to_mcq(init_attr->send_cq),
          to_mcq(init_attr->recv_cq),
          init_attr->sq_sig_type, &init_attr->cap,
          qp->ibqp.qp_num, init_attr->port_num,
          to_msqp(qp));
  break;
 }
 default:

  return ERR_PTR(-ENOSYS);
 }

 if (err) {
  kfree(qp);
  return ERR_PTR(err);
 }

 init_attr->cap.max_send_wr = qp->sq.max;
 init_attr->cap.max_recv_wr = qp->rq.max;
 init_attr->cap.max_send_sge = qp->sq.max_gs;
 init_attr->cap.max_recv_sge = qp->rq.max_gs;
 init_attr->cap.max_inline_data = qp->max_inline_data;

 return &qp->ibqp;
}
