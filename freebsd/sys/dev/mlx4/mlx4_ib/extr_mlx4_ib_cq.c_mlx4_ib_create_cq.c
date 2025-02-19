
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;


struct mlx4_uar {int dummy; } ;
struct mlx4_ib_dev {int* eq_table; TYPE_3__* dev; struct mlx4_uar priv_uar; } ;
struct mlx4_ib_create_cq {int db_addr; int buf_addr; } ;
struct TYPE_24__ {int dma; scalar_t__* db; } ;
struct ib_cq {int cqe; } ;
struct TYPE_23__ {int mtt; } ;
struct TYPE_19__ {int cqn; int event; int comp; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct mlx4_ib_cq {int create_flags; TYPE_7__ db; struct ib_cq ibcq; TYPE_4__ buf; int umem; TYPE_16__ mcq; int recv_qp_list; int send_qp_list; int * resize_umem; int * resize_buf; int lock; int resize_mutex; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int num_comp_vectors; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; int flags; } ;
typedef int __u32 ;
struct TYPE_20__ {int max_cqes; } ;
struct TYPE_22__ {TYPE_1__ caps; } ;
struct TYPE_21__ {struct mlx4_uar uar; } ;


 int CQ_CREATE_FLAGS_SUPPORTED ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_cq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_CQ_FLAGS_TIMESTAMP_COMPLETION ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ ib_copy_from_udata (struct mlx4_ib_create_cq*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int ib_umem_release (int ) ;
 int kfree (struct mlx4_ib_cq*) ;
 struct mlx4_ib_cq* kmalloc (int,int ) ;
 int mlx4_cq_alloc (TYPE_3__*,int,int *,struct mlx4_uar*,int ,TYPE_16__*,int,int ,int) ;
 int mlx4_cq_free (TYPE_3__*,TYPE_16__*) ;
 int mlx4_db_alloc (TYPE_3__*,TYPE_7__*,int,int ) ;
 int mlx4_db_free (TYPE_3__*,TYPE_7__*) ;
 int mlx4_ib_alloc_cq_buf (struct mlx4_ib_dev*,TYPE_4__*,int) ;
 int mlx4_ib_cq_comp ;
 int mlx4_ib_cq_event ;
 int mlx4_ib_db_map_user (TYPE_2__*,int ,TYPE_7__*) ;
 int mlx4_ib_db_unmap_user (TYPE_2__*,TYPE_7__*) ;
 int mlx4_ib_free_cq_buf (struct mlx4_ib_dev*,TYPE_4__*,int) ;
 int mlx4_ib_get_cq_umem (struct mlx4_ib_dev*,struct ib_ucontext*,TYPE_4__*,int *,int ,int) ;
 int mlx4_mtt_cleanup (TYPE_3__*,int *) ;
 int mutex_init (int *) ;
 int roundup_pow_of_two (int) ;
 int spin_lock_init (int *) ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;
 TYPE_2__* to_mucontext (struct ib_ucontext*) ;

struct ib_cq *mlx4_ib_create_cq(struct ib_device *ibdev,
    const struct ib_cq_init_attr *attr,
    struct ib_ucontext *context,
    struct ib_udata *udata)
{
 int entries = attr->cqe;
 int vector = attr->comp_vector;
 struct mlx4_ib_dev *dev = to_mdev(ibdev);
 struct mlx4_ib_cq *cq;
 struct mlx4_uar *uar;
 int err;

 if (entries < 1 || entries > dev->dev->caps.max_cqes)
  return ERR_PTR(-EINVAL);

 if (attr->flags & ~CQ_CREATE_FLAGS_SUPPORTED)
  return ERR_PTR(-EINVAL);

 cq = kmalloc(sizeof *cq, GFP_KERNEL);
 if (!cq)
  return ERR_PTR(-ENOMEM);

 entries = roundup_pow_of_two(entries + 1);
 cq->ibcq.cqe = entries - 1;
 mutex_init(&cq->resize_mutex);
 spin_lock_init(&cq->lock);
 cq->resize_buf = ((void*)0);
 cq->resize_umem = ((void*)0);
 cq->create_flags = attr->flags;
 INIT_LIST_HEAD(&cq->send_qp_list);
 INIT_LIST_HEAD(&cq->recv_qp_list);

 if (context) {
  struct mlx4_ib_create_cq ucmd;

  if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd)) {
   err = -EFAULT;
   goto err_cq;
  }

  err = mlx4_ib_get_cq_umem(dev, context, &cq->buf, &cq->umem,
       ucmd.buf_addr, entries);
  if (err)
   goto err_cq;

  err = mlx4_ib_db_map_user(to_mucontext(context), ucmd.db_addr,
       &cq->db);
  if (err)
   goto err_mtt;

  uar = &to_mucontext(context)->uar;
 } else {
  err = mlx4_db_alloc(dev->dev, &cq->db, 1, GFP_KERNEL);
  if (err)
   goto err_cq;

  cq->mcq.set_ci_db = cq->db.db;
  cq->mcq.arm_db = cq->db.db + 1;
  *cq->mcq.set_ci_db = 0;
  *cq->mcq.arm_db = 0;

  err = mlx4_ib_alloc_cq_buf(dev, &cq->buf, entries);
  if (err)
   goto err_db;

  uar = &dev->priv_uar;
 }

 if (dev->eq_table)
  vector = dev->eq_table[vector % ibdev->num_comp_vectors];

 err = mlx4_cq_alloc(dev->dev, entries, &cq->buf.mtt, uar,
       cq->db.dma, &cq->mcq, vector, 0,
       !!(cq->create_flags & IB_CQ_FLAGS_TIMESTAMP_COMPLETION));
 if (err)
  goto err_dbmap;

 cq->mcq.comp = mlx4_ib_cq_comp;
 cq->mcq.event = mlx4_ib_cq_event;

 if (context)
  if (ib_copy_to_udata(udata, &cq->mcq.cqn, sizeof (__u32))) {
   err = -EFAULT;
   goto err_cq_free;
  }

 return &cq->ibcq;

err_cq_free:
 mlx4_cq_free(dev->dev, &cq->mcq);

err_dbmap:
 if (context)
  mlx4_ib_db_unmap_user(to_mucontext(context), &cq->db);

err_mtt:
 mlx4_mtt_cleanup(dev->dev, &cq->buf.mtt);

 if (context)
  ib_umem_release(cq->umem);
 else
  mlx4_ib_free_cq_buf(dev, &cq->buf, cq->ibcq.cqe);

err_db:
 if (!context)
  mlx4_db_free(dev->dev, &cq->db);

err_cq:
 kfree(cq);

 return ERR_PTR(err);
}
