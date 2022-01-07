
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int MA_OWNED ;
 int mtx_assert (struct mtx*,int ) ;

__attribute__((used)) static void
knlist_mtx_assert_locked(void *arg)
{

 mtx_assert((struct mtx *)arg, MA_OWNED);
}
