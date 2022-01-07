
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaltq {int ifq_mtx; } ;


 int mtx_destroy (int *) ;

void
ifq_delete(struct ifaltq *ifq)
{
 mtx_destroy(&ifq->ifq_mtx);
}
