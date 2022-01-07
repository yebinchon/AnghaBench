
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ifp; int * rxs; int * txs; } ;


 int M_XENNETBACK ;
 int free (int *,int ) ;
 int if_free (int *) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
teardown_pvt_data(void)
{
 if (xnb_unit_pvt.txs != ((void*)0)) {
  free(xnb_unit_pvt.txs, M_XENNETBACK);
 }
 if (xnb_unit_pvt.rxs != ((void*)0)) {
  free(xnb_unit_pvt.rxs, M_XENNETBACK);
 }
 if (xnb_unit_pvt.ifp != ((void*)0)) {
  if_free(xnb_unit_pvt.ifp);
 }
}
