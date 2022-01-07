
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimer {int it_usecount; int it_mtx; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
itimer_enter(struct itimer *it)
{

 mtx_assert(&it->it_mtx, MA_OWNED);
 it->it_usecount++;
}
