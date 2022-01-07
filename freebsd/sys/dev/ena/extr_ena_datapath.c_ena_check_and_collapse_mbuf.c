
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_2__ {int collapse_err; int collapse; } ;
struct ena_ring {TYPE_1__ tx_stats; struct ena_adapter* adapter; } ;
struct ena_adapter {int max_tx_sgl_size; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int counter_u64_add (int ,int) ;
 int ena_mbuf_count (struct mbuf*) ;
 struct mbuf* m_collapse (struct mbuf*,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ena_check_and_collapse_mbuf(struct ena_ring *tx_ring, struct mbuf **mbuf)
{
 struct ena_adapter *adapter;
 struct mbuf *collapsed_mbuf;
 int num_frags;

 adapter = tx_ring->adapter;
 num_frags = ena_mbuf_count(*mbuf);


 if (num_frags < adapter->max_tx_sgl_size)
  return (0);
 counter_u64_add(tx_ring->tx_stats.collapse, 1);

 collapsed_mbuf = m_collapse(*mbuf, M_NOWAIT,
     adapter->max_tx_sgl_size - 1);
 if (unlikely(collapsed_mbuf == ((void*)0))) {
  counter_u64_add(tx_ring->tx_stats.collapse_err, 1);
  return (ENOMEM);
 }


 *mbuf = collapsed_mbuf;

 return (0);
}
