
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct mbuf {int dummy; } ;
struct lro_ctrl {unsigned int lro_mbuf_count; int lro_flushed; int lro_queued; TYPE_2__* ifp; TYPE_1__* lro_mbuf_data; } ;
struct TYPE_4__ {int (* if_input ) (TYPE_2__*,struct mbuf*) ;} ;
struct TYPE_3__ {unsigned long long seq; struct mbuf* mb; } ;


 int stub1 (TYPE_2__*,struct mbuf*) ;
 scalar_t__ tcp_lro_rx2 (struct lro_ctrl*,struct mbuf*,int ,int ) ;
 int tcp_lro_rx_done (struct lro_ctrl*) ;
 int tcp_lro_sort (TYPE_1__*,unsigned int) ;

void
tcp_lro_flush_all(struct lro_ctrl *lc)
{
 uint64_t seq;
 uint64_t nseq;
 unsigned x;


 if (lc->lro_mbuf_count == 0)
  goto done;


 tcp_lro_sort(lc->lro_mbuf_data, lc->lro_mbuf_count);


 seq = 0;
 for (x = 0; x != lc->lro_mbuf_count; x++) {
  struct mbuf *mb;


  mb = lc->lro_mbuf_data[x].mb;


  nseq = lc->lro_mbuf_data[x].seq & (-1ULL << 24);


  if (seq != nseq) {
   seq = nseq;


   tcp_lro_rx_done(lc);
  }


  if (tcp_lro_rx2(lc, mb, 0, 0) != 0) {

   (*lc->ifp->if_input)(lc->ifp, mb);
   lc->lro_queued++;
   lc->lro_flushed++;
  }
 }
done:

 tcp_lro_rx_done(lc);

 lc->lro_mbuf_count = 0;
}
