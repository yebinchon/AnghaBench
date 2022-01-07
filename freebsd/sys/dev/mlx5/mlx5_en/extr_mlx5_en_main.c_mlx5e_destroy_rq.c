
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
struct mlx5e_rq {int dma_tag; int wq_ctrl; TYPE_2__* mbuf; int wq; int lro; TYPE_1__ stats; } ;
struct TYPE_4__ {int dma_map; int * mbuf; } ;


 int M_MLX5EN ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int free (TYPE_2__*,int ) ;
 int m_freem (int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5_wq_ll_get_size (int *) ;
 int sysctl_ctx_free (int *) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
mlx5e_destroy_rq(struct mlx5e_rq *rq)
{
 int wq_sz;
 int i;


 sysctl_ctx_free(&rq->stats.ctx);


 tcp_lro_free(&rq->lro);

 wq_sz = mlx5_wq_ll_get_size(&rq->wq);
 for (i = 0; i != wq_sz; i++) {
  if (rq->mbuf[i].mbuf != ((void*)0)) {
   bus_dmamap_unload(rq->dma_tag, rq->mbuf[i].dma_map);
   m_freem(rq->mbuf[i].mbuf);
  }
  bus_dmamap_destroy(rq->dma_tag, rq->mbuf[i].dma_map);
 }
 free(rq->mbuf, M_MLX5EN);
 mlx5_wq_destroy(&rq->wq_ctrl);
 bus_dma_tag_destroy(rq->dma_tag);
}
