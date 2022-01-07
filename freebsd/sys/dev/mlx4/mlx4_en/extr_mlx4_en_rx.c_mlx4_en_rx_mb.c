
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_rx_ring {int dma_tag; } ;
struct mlx4_en_rx_mbuf {struct mbuf* mbuf; int dma_map; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int m_data; } ;


 int BUS_DMASYNC_POSTREAD ;
 int MHLEN ;
 int MLX4_NET_IP_ALIGN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int bcopy (int ,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int caddr_t ;
 scalar_t__ likely (int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_gethdr (int ,int ) ;
 scalar_t__ mlx4_en_alloc_buf (struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct mbuf *
mlx4_en_rx_mb(struct mlx4_en_priv *priv, struct mlx4_en_rx_ring *ring,
    struct mlx4_en_rx_desc *rx_desc, struct mlx4_en_rx_mbuf *mb_list,
    int length)
{

 struct mbuf *mb_head;

 struct mbuf *mb;


 if (length <= (MHLEN - MLX4_NET_IP_ALIGN) &&
     (mb = m_gethdr(M_NOWAIT, MT_DATA)) != ((void*)0)) {


  mb->m_pkthdr.len = mb->m_len = length;


  mb->m_data += MLX4_NET_IP_ALIGN;

  bus_dmamap_sync(ring->dma_tag, mb_list->dma_map,
      BUS_DMASYNC_POSTREAD);

  bcopy(mtod(mb_list->mbuf, caddr_t), mtod(mb, caddr_t), length);

  return (mb);
 }


 mb = mb_list->mbuf;


 if (mlx4_en_alloc_buf(ring, rx_desc, mb_list))
  return (((void*)0));


 if (unlikely(length > mb->m_pkthdr.len))
  length = mb->m_pkthdr.len;





 mb->m_pkthdr.len = length;
 for (mb_head = mb; mb != ((void*)0); mb = mb->m_next) {
  if (mb->m_len > length)
   mb->m_len = length;
  length -= mb->m_len;
  if (likely(length == 0)) {
   if (likely(mb->m_next != ((void*)0))) {

    m_freem(mb->m_next);
    mb->m_next = ((void*)0);
   }
   break;
  }
 }

 mb = mb_head;

 return (mb);
}
