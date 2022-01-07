
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {int wq; } ;
struct TYPE_6__ {int nop; } ;
struct TYPE_5__ {scalar_t__ sz_m1; } ;
struct mlx5e_sq {scalar_t__ cc; scalar_t__ cev_factor; TYPE_4__ cq; TYPE_3__* mbuf; int dma_tag; TYPE_2__ stats; TYPE_1__ wq; } ;
struct mlx5_cqe64 {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {scalar_t__ num_bytes; scalar_t__ num_wqebbs; int dma_map; struct mbuf* mbuf; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int atomic_thread_fence_rel () ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (struct mbuf*) ;
 int mlx5_cqwq_pop (int *) ;
 int mlx5_cqwq_update_db_record (int *) ;
 struct mlx5_cqe64* mlx5e_get_cqe (TYPE_4__*) ;

__attribute__((used)) static void
mlx5e_poll_tx_cq(struct mlx5e_sq *sq, int budget)
{
 u16 sqcc;





 sqcc = sq->cc;

 while (budget > 0) {
  struct mlx5_cqe64 *cqe;
  struct mbuf *mb;
  u16 x;
  u16 ci;

  cqe = mlx5e_get_cqe(&sq->cq);
  if (!cqe)
   break;

  mlx5_cqwq_pop(&sq->cq.wq);


  budget -= sq->cev_factor;

  for (x = 0; x != sq->cev_factor; x++) {
   ci = sqcc & sq->wq.sz_m1;
   mb = sq->mbuf[ci].mbuf;
   sq->mbuf[ci].mbuf = ((void*)0);

   if (mb == ((void*)0)) {
    if (sq->mbuf[ci].num_bytes == 0) {

     sq->stats.nop++;
    }
   } else {
    bus_dmamap_sync(sq->dma_tag, sq->mbuf[ci].dma_map,
        BUS_DMASYNC_POSTWRITE);
    bus_dmamap_unload(sq->dma_tag, sq->mbuf[ci].dma_map);


    m_freem(mb);
   }
   sqcc += sq->mbuf[ci].num_wqebbs;
  }
 }

 mlx5_cqwq_update_db_record(&sq->cq.wq);


 atomic_thread_fence_rel();

 sq->cc = sqcc;
}
