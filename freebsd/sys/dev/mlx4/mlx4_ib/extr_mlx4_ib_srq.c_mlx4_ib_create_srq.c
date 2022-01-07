
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_24__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_17__ ;
typedef struct TYPE_38__ TYPE_16__ ;
typedef struct TYPE_37__ TYPE_13__ ;
typedef struct TYPE_36__ TYPE_12__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_wqe_srq_next_seg {int next_wqe_index; } ;
struct mlx4_wqe_data_seg {int lkey; } ;
struct TYPE_39__ {int dma; scalar_t__* db; } ;
struct TYPE_41__ {int page_shift; int npages; } ;
struct TYPE_44__ {int srq_num; } ;
struct TYPE_45__ {TYPE_4__ xrc; } ;
struct ib_srq {TYPE_5__ ext; } ;
struct TYPE_37__ {int max; scalar_t__ max_gs; int srqn; int event; int wqe_shift; } ;
struct mlx4_ib_srq {int tail; TYPE_17__ db; TYPE_24__ buf; TYPE_16__* umem; int mtt; scalar_t__ wrid; struct ib_srq ibsrq; TYPE_13__ msrq; scalar_t__ wqe_ctr; scalar_t__ head; int lock; int mutex; } ;
struct mlx4_ib_dev {TYPE_12__* dev; } ;
struct mlx4_ib_create_srq {int db_addr; int buf_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_47__ {int max_wr; scalar_t__ max_sge; } ;
struct TYPE_42__ {int xrcd; int cq; } ;
struct TYPE_43__ {TYPE_2__ xrc; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; TYPE_7__ attr; TYPE_3__ ext; } ;
struct ib_pd {TYPE_8__* uobject; int device; } ;
typedef int __u32 ;
struct TYPE_49__ {int xrcdn; } ;
struct TYPE_48__ {int context; } ;
struct TYPE_46__ {int max_srq_wqes; scalar_t__ max_srq_sge; scalar_t__ reserved_xrcds; } ;
struct TYPE_40__ {int cqn; } ;
struct TYPE_38__ {int page_size; } ;
struct TYPE_36__ {TYPE_6__ caps; } ;
struct TYPE_35__ {TYPE_1__ mcq; } ;
struct TYPE_34__ {int pdn; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_srq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IB_SRQT_XRC ;
 scalar_t__ IS_ERR (TYPE_16__*) ;
 int MLX4_INVALID_LKEY ;
 int PAGE_SIZE ;
 int PTR_ERR (TYPE_16__*) ;
 int __GFP_NOWARN ;
 scalar_t__ __vmalloc (int,int,int ) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 struct mlx4_wqe_srq_next_seg* get_wqe (struct mlx4_ib_srq*,int) ;
 scalar_t__ ib_copy_from_udata (struct mlx4_ib_create_srq*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 TYPE_16__* ib_umem_get (int ,int ,int,int ,int ) ;
 int ib_umem_page_count (TYPE_16__*) ;
 int ib_umem_release (TYPE_16__*) ;
 int ilog2 (int) ;
 int kfree (struct mlx4_ib_srq*) ;
 struct mlx4_ib_srq* kmalloc (int,int) ;
 scalar_t__ kmalloc_array (int,int,int) ;
 int kvfree (scalar_t__) ;
 int max (unsigned long,int) ;
 scalar_t__ mlx4_buf_alloc (TYPE_12__*,int,int,TYPE_24__*,int) ;
 int mlx4_buf_free (TYPE_12__*,int,TYPE_24__*) ;
 int mlx4_buf_write_mtt (TYPE_12__*,int *,TYPE_24__*,int) ;
 int mlx4_db_alloc (TYPE_12__*,TYPE_17__*,int ,int) ;
 int mlx4_db_free (TYPE_12__*,TYPE_17__*) ;
 int mlx4_ib_db_map_user (int ,int ,TYPE_17__*) ;
 int mlx4_ib_db_unmap_user (int ,TYPE_17__*) ;
 int mlx4_ib_srq_event ;
 int mlx4_ib_umem_write_mtt (struct mlx4_ib_dev*,int *,TYPE_16__*) ;
 int mlx4_mtt_cleanup (TYPE_12__*,int *) ;
 int mlx4_mtt_init (TYPE_12__*,int ,int ,int *) ;
 int mlx4_srq_alloc (TYPE_12__*,int ,int ,int ,int *,int ,TYPE_13__*) ;
 int mutex_init (int *) ;
 int roundup_pow_of_two (int) ;
 int spin_lock_init (int *) ;
 TYPE_11__* to_mcq (int ) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 TYPE_10__* to_mpd (struct ib_pd*) ;
 int to_mucontext (int ) ;
 TYPE_9__* to_mxrcd (int ) ;

struct ib_srq *mlx4_ib_create_srq(struct ib_pd *pd,
      struct ib_srq_init_attr *init_attr,
      struct ib_udata *udata)
{
 struct mlx4_ib_dev *dev = to_mdev(pd->device);
 struct mlx4_ib_srq *srq;
 struct mlx4_wqe_srq_next_seg *next;
 struct mlx4_wqe_data_seg *scatter;
 u32 cqn;
 u16 xrcdn;
 int desc_size;
 int buf_size;
 int err;
 int i;


 if (init_attr->attr.max_wr >= dev->dev->caps.max_srq_wqes ||
     init_attr->attr.max_sge > dev->dev->caps.max_srq_sge)
  return ERR_PTR(-EINVAL);

 srq = kmalloc(sizeof *srq, GFP_KERNEL);
 if (!srq)
  return ERR_PTR(-ENOMEM);

 mutex_init(&srq->mutex);
 spin_lock_init(&srq->lock);
 srq->msrq.max = roundup_pow_of_two(init_attr->attr.max_wr + 1);
 srq->msrq.max_gs = init_attr->attr.max_sge;

 desc_size = max(32UL,
   roundup_pow_of_two(sizeof (struct mlx4_wqe_srq_next_seg) +
        srq->msrq.max_gs *
        sizeof (struct mlx4_wqe_data_seg)));
 srq->msrq.wqe_shift = ilog2(desc_size);

 buf_size = srq->msrq.max * desc_size;

 if (pd->uobject) {
  struct mlx4_ib_create_srq ucmd;

  if (ib_copy_from_udata(&ucmd, udata, sizeof ucmd)) {
   err = -EFAULT;
   goto err_srq;
  }

  srq->umem = ib_umem_get(pd->uobject->context, ucmd.buf_addr,
     buf_size, 0, 0);
  if (IS_ERR(srq->umem)) {
   err = PTR_ERR(srq->umem);
   goto err_srq;
  }

  err = mlx4_mtt_init(dev->dev, ib_umem_page_count(srq->umem),
        ilog2(srq->umem->page_size), &srq->mtt);
  if (err)
   goto err_buf;

  err = mlx4_ib_umem_write_mtt(dev, &srq->mtt, srq->umem);
  if (err)
   goto err_mtt;

  err = mlx4_ib_db_map_user(to_mucontext(pd->uobject->context),
       ucmd.db_addr, &srq->db);
  if (err)
   goto err_mtt;
 } else {
  err = mlx4_db_alloc(dev->dev, &srq->db, 0, GFP_KERNEL);
  if (err)
   goto err_srq;

  *srq->db.db = 0;

  if (mlx4_buf_alloc(dev->dev, buf_size, PAGE_SIZE * 2, &srq->buf,
       GFP_KERNEL)) {
   err = -ENOMEM;
   goto err_db;
  }

  srq->head = 0;
  srq->tail = srq->msrq.max - 1;
  srq->wqe_ctr = 0;

  for (i = 0; i < srq->msrq.max; ++i) {
   next = get_wqe(srq, i);
   next->next_wqe_index =
    cpu_to_be16((i + 1) & (srq->msrq.max - 1));

   for (scatter = (void *) (next + 1);
        (void *) scatter < (void *) next + desc_size;
        ++scatter)
    scatter->lkey = cpu_to_be32(MLX4_INVALID_LKEY);
  }

  err = mlx4_mtt_init(dev->dev, srq->buf.npages, srq->buf.page_shift,
        &srq->mtt);
  if (err)
   goto err_buf;

  err = mlx4_buf_write_mtt(dev->dev, &srq->mtt, &srq->buf, GFP_KERNEL);
  if (err)
   goto err_mtt;

  srq->wrid = kmalloc_array(srq->msrq.max, sizeof(u64),
     GFP_KERNEL | __GFP_NOWARN);
  if (!srq->wrid) {
   srq->wrid = __vmalloc(srq->msrq.max * sizeof(u64),
           GFP_KERNEL, 0 );
   if (!srq->wrid) {
    err = -ENOMEM;
    goto err_mtt;
   }
  }
 }

 cqn = (init_attr->srq_type == IB_SRQT_XRC) ?
  to_mcq(init_attr->ext.xrc.cq)->mcq.cqn : 0;
 xrcdn = (init_attr->srq_type == IB_SRQT_XRC) ?
  to_mxrcd(init_attr->ext.xrc.xrcd)->xrcdn :
  (u16) dev->dev->caps.reserved_xrcds;
 err = mlx4_srq_alloc(dev->dev, to_mpd(pd)->pdn, cqn, xrcdn, &srq->mtt,
        srq->db.dma, &srq->msrq);
 if (err)
  goto err_wrid;

 srq->msrq.event = mlx4_ib_srq_event;
 srq->ibsrq.ext.xrc.srq_num = srq->msrq.srqn;

 if (pd->uobject)
  if (ib_copy_to_udata(udata, &srq->msrq.srqn, sizeof (__u32))) {
   err = -EFAULT;
   goto err_wrid;
  }

 init_attr->attr.max_wr = srq->msrq.max - 1;

 return &srq->ibsrq;

err_wrid:
 if (pd->uobject)
  mlx4_ib_db_unmap_user(to_mucontext(pd->uobject->context), &srq->db);
 else
  kvfree(srq->wrid);

err_mtt:
 mlx4_mtt_cleanup(dev->dev, &srq->mtt);

err_buf:
 if (pd->uobject)
  ib_umem_release(srq->umem);
 else
  mlx4_buf_free(dev->dev, buf_size, &srq->buf);

err_db:
 if (!pd->uobject)
  mlx4_db_free(dev->dev, &srq->db);

err_srq:
 kfree(srq);

 return ERR_PTR(err);
}
