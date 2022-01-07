
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
struct mbuf {TYPE_3__ m_pkthdr; } ;
struct TYPE_5__ {int opt; } ;
struct TYPE_4__ {int yellow_pkts; int droped_pkts; int red_pkts; } ;
struct hookinfo {size_t q_last; int q_first; int te; int tc; int q_mtx; TYPE_2__ conf; struct mbuf** q; TYPE_1__ stats; } ;
typedef int item_p ;


 int NGI_GET_M (int ,struct mbuf*) ;
 int NG_CAR_COUNT_PACKETS ;
 int NG_CAR_QUEUE_MIN_TH ;
 int NG_CAR_QUEUE_SIZE ;
 int NG_FREE_ITEM (int ) ;
 int NG_FREE_M (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_car_schedule (struct hookinfo*) ;

__attribute__((used)) static void
ng_car_enqueue(struct hookinfo *hinfo, item_p item)
{
 struct mbuf *m;
 int len;

 NGI_GET_M(item, m);
 NG_FREE_ITEM(item);


 mtx_lock(&hinfo->q_mtx);


 len = hinfo->q_last - hinfo->q_first;
 if (len < 0)
  len += NG_CAR_QUEUE_SIZE;


 if ((len >= (NG_CAR_QUEUE_SIZE - 1)) ||
     (hinfo->te + len >= NG_CAR_QUEUE_SIZE)) {

  ++hinfo->stats.red_pkts;
  ++hinfo->stats.droped_pkts;
  NG_FREE_M(m);

  hinfo->te = 0;
 } else {

  ++hinfo->stats.yellow_pkts;


  hinfo->q[hinfo->q_last] = m;
  hinfo->q_last++;
  if (hinfo->q_last >= NG_CAR_QUEUE_SIZE)
   hinfo->q_last = 0;


  if (len > NG_CAR_QUEUE_MIN_TH)
   hinfo->te += len - NG_CAR_QUEUE_MIN_TH;


  if (len == 0) {
   if (hinfo->conf.opt & NG_CAR_COUNT_PACKETS) {
    hinfo->tc -= 128;
   } else {
    hinfo->tc -= m->m_pkthdr.len;
   }


   ng_car_schedule(hinfo);
  }
 }


 mtx_unlock(&hinfo->q_mtx);
}
