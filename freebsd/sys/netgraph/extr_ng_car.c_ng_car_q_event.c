
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
struct TYPE_4__ {int passed_pkts; int errors; } ;
struct hookinfo {scalar_t__ tc; size_t q_first; size_t q_last; TYPE_2__ conf; struct mbuf** q; TYPE_1__ stats; int dest; } ;
typedef int node_p ;
typedef int hook_p ;


 int NG_CAR_COUNT_PACKETS ;
 size_t NG_CAR_QUEUE_SIZE ;
 struct hookinfo* NG_HOOK_PRIVATE (int ) ;
 int NG_SEND_DATA_ONLY (int,int ,struct mbuf*) ;
 int ng_car_refillhook (struct hookinfo*) ;
 int ng_car_schedule (struct hookinfo*) ;

void
ng_car_q_event(node_p node, hook_p hook, void *arg, int arg2)
{
 struct hookinfo *hinfo = NG_HOOK_PRIVATE(hook);
 struct mbuf *m;
 int error;


 ng_car_refillhook(hinfo);


 while (hinfo->tc >= 0) {


  m = hinfo->q[hinfo->q_first];
  NG_SEND_DATA_ONLY(error, hinfo->dest, m);
  if (error != 0)
   ++hinfo->stats.errors;
  ++hinfo->stats.passed_pkts;


  hinfo->q_first++;
  if (hinfo->q_first >= NG_CAR_QUEUE_SIZE)
   hinfo->q_first = 0;


  if (hinfo->q_first == hinfo->q_last)
   break;


  m = hinfo->q[hinfo->q_first];
  if (hinfo->conf.opt & NG_CAR_COUNT_PACKETS) {
   hinfo->tc -= 128;
  } else {
   hinfo->tc -= m->m_pkthdr.len;
  }
 }


 if (hinfo->q_first != hinfo->q_last)

  ng_car_schedule(hinfo);
}
