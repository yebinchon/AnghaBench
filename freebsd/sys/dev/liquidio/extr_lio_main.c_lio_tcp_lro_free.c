
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct octeon_device {int num_oqs; struct lio_droq** droq; } ;
struct TYPE_8__ {int * ifp; } ;
struct lio_droq {TYPE_4__ lro; } ;
struct TYPE_5__ {TYPE_3__* rxpciq; } ;
struct lio {TYPE_1__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int q_no; } ;
struct TYPE_7__ {TYPE_2__ s; } ;


 struct lio* if_getsoftc (struct ifnet*) ;
 int tcp_lro_free (TYPE_4__*) ;

__attribute__((used)) static void
lio_tcp_lro_free(struct octeon_device *octeon_dev, struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct lio_droq *droq;
 int q_no;
 int i;

 for (i = 0; i < octeon_dev->num_oqs; i++) {
  q_no = lio->linfo.rxpciq[i].s.q_no;
  droq = octeon_dev->droq[q_no];
  if (droq->lro.ifp) {
   tcp_lro_free(&droq->lro);
   droq->lro.ifp = ((void*)0);
  }
 }
}
