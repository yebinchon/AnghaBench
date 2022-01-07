
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_info {int dummy; } ;
struct TYPE_2__ {int * ifp; } ;
struct sge_rxq {int fl; int iq; TYPE_1__ lro; } ;


 int bzero (struct sge_rxq*,int) ;
 int free_iq_fl (struct vi_info*,int *,int *) ;
 int tcp_lro_free (TYPE_1__*) ;

__attribute__((used)) static int
free_rxq(struct vi_info *vi, struct sge_rxq *rxq)
{
 int rc;
 rc = free_iq_fl(vi, &rxq->iq, &rxq->fl);
 if (rc == 0)
  bzero(rxq, sizeof(*rxq));

 return (rc);
}
