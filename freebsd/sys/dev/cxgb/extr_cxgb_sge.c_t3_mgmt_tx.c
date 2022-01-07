
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_2__ {int * qs; } ;
struct adapter {TYPE_1__ sge; } ;


 int ctrl_xmit (struct adapter*,int *,struct mbuf*) ;

int
t3_mgmt_tx(struct adapter *adap, struct mbuf *m)
{
 return ctrl_xmit(adap, &adap->sge.qs[0], m);
}
