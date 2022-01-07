
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {int num_oqs; struct lio_droq** droq; } ;
struct lro_ctrl {struct ifnet* ifp; } ;
struct lio_droq {struct lro_ctrl lro; } ;
struct TYPE_6__ {TYPE_2__* rxpciq; } ;
struct lio {TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_err (struct octeon_device*,char*,int) ;
 int lio_tcp_lro_free (struct octeon_device*,struct ifnet*) ;
 int tcp_lro_init (struct lro_ctrl*) ;

__attribute__((used)) static int
lio_tcp_lro_init(struct octeon_device *octeon_dev, struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct lio_droq *droq;
 struct lro_ctrl *lro;
 int i, q_no, ret = 0;

 for (i = 0; i < octeon_dev->num_oqs; i++) {
  q_no = lio->linfo.rxpciq[i].s.q_no;
  droq = octeon_dev->droq[q_no];
  lro = &droq->lro;
  ret = tcp_lro_init(lro);
  if (ret) {
   lio_dev_err(octeon_dev, "LRO Initialization failed ret %d\n",
        ret);
   goto lro_init_failed;
  }

  lro->ifp = ifp;
 }

 return (ret);

lro_init_failed:
 lio_tcp_lro_free(octeon_dev, ifp);

 return (ret);
}
