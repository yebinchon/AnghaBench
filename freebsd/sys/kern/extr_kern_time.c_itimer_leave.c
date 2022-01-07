
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimer {scalar_t__ it_usecount; int it_flags; int it_mtx; } ;


 int ITF_WANTED ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int wakeup (struct itimer*) ;

__attribute__((used)) static void
itimer_leave(struct itimer *it)
{

 mtx_assert(&it->it_mtx, MA_OWNED);
 KASSERT(it->it_usecount > 0, ("invalid it_usecount"));

 if (--it->it_usecount == 0 && (it->it_flags & ITF_WANTED) != 0)
  wakeup(it);
}
