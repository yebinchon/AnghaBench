
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_srq_table {int lock; int tree; } ;
struct mlx4_srq_context {int mtt_base_addr_h; int db_rec_addr; void* pd; void* mtt_base_addr_l; scalar_t__ log_page_size; void* pg_offset_cqn; int xrcd; scalar_t__ logstride; void* state_logsize_srqn; } ;
struct mlx4_srq {int srqn; int free; int refcount; scalar_t__ wqe_shift; int max; } ;
struct mlx4_mtt {scalar_t__ page_shift; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_srq_context* buf; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 scalar_t__ MLX4_ICM_PAGE_SHIFT ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int atomic_set (int *,int) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int) ;
 int ilog2 (int ) ;
 int init_completion (int *) ;
 int mlx4_SW2HW_SRQ (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_mtt_addr (struct mlx4_dev*,struct mlx4_mtt*) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_srq_alloc_icm (struct mlx4_dev*,int*) ;
 int mlx4_srq_free_icm (struct mlx4_dev*,int) ;
 int radix_tree_delete (int *,int) ;
 int radix_tree_insert (int *,int,struct mlx4_srq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int mlx4_srq_alloc(struct mlx4_dev *dev, u32 pdn, u32 cqn, u16 xrcd,
     struct mlx4_mtt *mtt, u64 db_rec, struct mlx4_srq *srq)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 struct mlx4_cmd_mailbox *mailbox;
 struct mlx4_srq_context *srq_context;
 u64 mtt_addr;
 int err;

 err = mlx4_srq_alloc_icm(dev, &srq->srqn);
 if (err)
  return err;

 spin_lock_irq(&srq_table->lock);
 err = radix_tree_insert(&srq_table->tree, srq->srqn, srq);
 spin_unlock_irq(&srq_table->lock);
 if (err)
  goto err_icm;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox)) {
  err = PTR_ERR(mailbox);
  goto err_radix;
 }

 srq_context = mailbox->buf;
 srq_context->state_logsize_srqn = cpu_to_be32((ilog2(srq->max) << 24) |
            srq->srqn);
 srq_context->logstride = srq->wqe_shift - 4;
 srq_context->xrcd = cpu_to_be16(xrcd);
 srq_context->pg_offset_cqn = cpu_to_be32(cqn & 0xffffff);
 srq_context->log_page_size = mtt->page_shift - MLX4_ICM_PAGE_SHIFT;

 mtt_addr = mlx4_mtt_addr(dev, mtt);
 srq_context->mtt_base_addr_h = mtt_addr >> 32;
 srq_context->mtt_base_addr_l = cpu_to_be32(mtt_addr & 0xffffffff);
 srq_context->pd = cpu_to_be32(pdn);
 srq_context->db_rec_addr = cpu_to_be64(db_rec);

 err = mlx4_SW2HW_SRQ(dev, mailbox, srq->srqn);
 mlx4_free_cmd_mailbox(dev, mailbox);
 if (err)
  goto err_radix;

 atomic_set(&srq->refcount, 1);
 init_completion(&srq->free);

 return 0;

err_radix:
 spin_lock_irq(&srq_table->lock);
 radix_tree_delete(&srq_table->tree, srq->srqn);
 spin_unlock_irq(&srq_table->lock);

err_icm:
 mlx4_srq_free_icm(dev, srq->srqn);
 return err;
}
