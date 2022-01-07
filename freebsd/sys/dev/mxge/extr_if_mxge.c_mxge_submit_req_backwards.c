
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int req; int mask; int * lanai; } ;
typedef TYPE_1__ mxge_tx_ring_t ;
typedef int mcp_kreq_ether_send_t ;


 int mxge_pio_copy (int *,int *,int) ;
 int wmb () ;

__attribute__((used)) static inline void
mxge_submit_req_backwards(mxge_tx_ring_t *tx,
       mcp_kreq_ether_send_t *src, int cnt)
{
 int idx, starting_slot;
 starting_slot = tx->req;
 while (cnt > 1) {
  cnt--;
  idx = (starting_slot + cnt) & tx->mask;
  mxge_pio_copy(&tx->lanai[idx],
         &src[cnt], sizeof(*src));
  wmb();
 }
}
