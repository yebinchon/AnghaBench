
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlx4_en_tx_ring {int inline_thold; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int m_len; } ;


 scalar_t__ MIN (int ,int ) ;
 scalar_t__ MIN_PKT_LEN ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16
mlx4_en_get_inline_hdr_size(struct mlx4_en_tx_ring *ring, struct mbuf *mb)
{
 u16 retval;


 retval = MIN(ring->inline_thold, mb->m_len);


 if (unlikely(retval < MIN_PKT_LEN))
  retval = MIN(ring->inline_thold, mb->m_pkthdr.len);
 return (retval);
}
