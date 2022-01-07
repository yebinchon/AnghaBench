
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int state; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;

__attribute__((used)) static void
mtx_assert(struct mtx *mp, int flag)
{
 if (flag == MA_OWNED) {
  KASSERT(mp->state == 1, ("mtx_assert(MA_OWNED) not true"));
 }
}
