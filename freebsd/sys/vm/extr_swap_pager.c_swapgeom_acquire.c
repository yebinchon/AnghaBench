
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {int index; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int sw_dev_mtx ;

__attribute__((used)) static void
swapgeom_acquire(struct g_consumer *cp)
{

 mtx_assert(&sw_dev_mtx, MA_OWNED);
 cp->index++;
}
