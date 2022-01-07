
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* ifp; } ;
struct mlx4_en_rx_ring {int buf; int buf_size; int size; scalar_t__ actual_size; scalar_t__ size_mask; TYPE_6__ lro; void* rx_mr_key_be; int log_stride; int rx_mb_size; int cqn; scalar_t__ cons; scalar_t__ prod; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int rx_ring_num; struct mlx4_en_rx_ring** rx_ring; TYPE_5__* dev; TYPE_4__* mdev; int rx_mb_size; TYPE_2__** rx_cq; } ;
typedef void* __be32 ;
struct TYPE_11__ {int if_capenable; } ;
struct TYPE_9__ {int key; } ;
struct TYPE_10__ {TYPE_3__ mr; } ;
struct TYPE_7__ {int cqn; } ;
struct TYPE_8__ {TYPE_1__ mcq; } ;


 int IFCAP_LRO ;
 int STAMP_SHIFT ;
 int TXBB_SIZE ;
 void* cpu_to_be32 (int) ;
 int ilog2 (int) ;
 int memset (int,int ,int) ;
 int mlx4_en_fill_rx_buffers (struct mlx4_en_priv*) ;
 int mlx4_en_free_rx_buf (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ;
 int mlx4_en_init_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ;
 int mlx4_en_update_rx_prod_db (struct mlx4_en_rx_ring*) ;
 scalar_t__ tcp_lro_init (TYPE_6__*) ;

int mlx4_en_activate_rx_rings(struct mlx4_en_priv *priv)
{
 struct mlx4_en_rx_ring *ring;



 int ring_ind;
 int err;

 for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
  ring = priv->rx_ring[ring_ind];

  ring->prod = 0;
  ring->cons = 0;
  ring->actual_size = 0;
  ring->cqn = priv->rx_cq[ring_ind]->mcq.cqn;
                ring->rx_mb_size = priv->rx_mb_size;

  if (sizeof(struct mlx4_en_rx_desc) <= TXBB_SIZE) {

   __be32 *ptr = (__be32 *)ring->buf;
   __be32 stamp = cpu_to_be32(1 << STAMP_SHIFT);
   *ptr = stamp;

   ring->buf += TXBB_SIZE;
  }

  ring->log_stride = ilog2(sizeof(struct mlx4_en_rx_desc));
  ring->buf_size = ring->size * sizeof(struct mlx4_en_rx_desc);

  memset(ring->buf, 0, ring->buf_size);
  mlx4_en_update_rx_prod_db(ring);






  ring->rx_mr_key_be = cpu_to_be32(priv->mdev->mr.key);
 }


 err = mlx4_en_fill_rx_buffers(priv);
 if (err)
  goto err_buffers;

 for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++) {
  ring = priv->rx_ring[ring_ind];

  ring->size_mask = ring->actual_size - 1;
  mlx4_en_update_rx_prod_db(ring);
 }

 return 0;

err_buffers:
 for (ring_ind = 0; ring_ind < priv->rx_ring_num; ring_ind++)
  mlx4_en_free_rx_buf(priv, priv->rx_ring[ring_ind]);

 ring_ind = priv->rx_ring_num - 1;

 while (ring_ind >= 0) {
  ring = priv->rx_ring[ring_ind];
  if (sizeof(struct mlx4_en_rx_desc) <= TXBB_SIZE)
   ring->buf -= TXBB_SIZE;
  ring_ind--;
 }

 return err;
}
