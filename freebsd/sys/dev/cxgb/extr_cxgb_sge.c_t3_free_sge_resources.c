
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * qs; } ;
struct TYPE_6__ {TYPE_1__ sge; } ;
typedef TYPE_2__ adapter_t ;


 int TXQ_LOCK (int *) ;
 int t3_free_qset (TYPE_2__*,int *) ;

void
t3_free_sge_resources(adapter_t *sc, int nqsets)
{
 int i;

 for (i = 0; i < nqsets; ++i) {
  TXQ_LOCK(&sc->sge.qs[i]);
  t3_free_qset(sc, &sc->sge.qs[i]);
 }
}
