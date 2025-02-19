
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx4_err_cqe {int syndrome; int vendor_err_syndrome; } ;
struct mlx4_en_tx_ring {int size_mask; int cons; int last_nr_txbb; int size; } ;
struct mlx4_en_priv {int cqe_factor; int port_up; struct mlx4_en_tx_ring** tx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int wqe_index; } ;


 int MLX4_CQE_OPCODE_ERROR ;
 int MLX4_CQE_OPCODE_MASK ;
 int MLX4_CQE_OWNER_MASK ;
 scalar_t__ XNOR (int,int) ;
 int be16_to_cpu (int ) ;
 int en_err (struct mlx4_en_priv*,char*,int ,int ) ;
 int mlx4_cq_set_ci (struct mlx4_cq*) ;
 int mlx4_en_free_tx_desc (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int) ;
 int mlx4_en_stamp_wqe (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int rmb () ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int mlx4_en_process_tx_cq(struct net_device *dev,
     struct mlx4_en_cq *cq)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_cq *mcq = &cq->mcq;
 struct mlx4_en_tx_ring *ring = priv->tx_ring[cq->ring];
 struct mlx4_cqe *cqe;
 u16 index;
 u16 new_index, ring_index, stamp_index;
 u32 txbbs_skipped = 0;
 u32 txbbs_stamp = 0;
 u32 cons_index = mcq->cons_index;
 int size = cq->size;
 u32 size_mask = ring->size_mask;
 struct mlx4_cqe *buf = cq->buf;
 int factor = priv->cqe_factor;

 if (!priv->port_up)
  return 0;

 index = cons_index & size_mask;
 cqe = &buf[(index << factor) + factor];
 ring_index = ring->cons & size_mask;
 stamp_index = ring_index;


 while (XNOR(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
   cons_index & size)) {




  rmb();

  if (unlikely((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) ==
        MLX4_CQE_OPCODE_ERROR)) {
   en_err(priv, "CQE completed in error - vendor syndrom: 0x%x syndrom: 0x%x\n",
          ((struct mlx4_err_cqe *)cqe)->
           vendor_err_syndrome,
          ((struct mlx4_err_cqe *)cqe)->syndrome);
  }


  new_index = be16_to_cpu(cqe->wqe_index) & size_mask;

  do {
   txbbs_skipped += ring->last_nr_txbb;
   ring_index = (ring_index + ring->last_nr_txbb) & size_mask;

   ring->last_nr_txbb = mlx4_en_free_tx_desc(
       priv, ring, ring_index);
   mlx4_en_stamp_wqe(priv, ring, stamp_index,
       !!((ring->cons + txbbs_stamp) &
      ring->size));
   stamp_index = ring_index;
   txbbs_stamp = txbbs_skipped;
  } while (ring_index != new_index);

  ++cons_index;
  index = cons_index & size_mask;
  cqe = &buf[(index << factor) + factor];
 }






 mcq->cons_index = cons_index;
 mlx4_cq_set_ci(mcq);
 wmb();
 ring->cons += txbbs_skipped;

 return (0);
}
