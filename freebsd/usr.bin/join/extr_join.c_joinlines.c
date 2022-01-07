
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_7__ {size_t setcnt; int * set; } ;
typedef TYPE_1__ INPUT ;


 int outoneline (TYPE_1__*,int *) ;
 int outtwoline (TYPE_1__*,int *,TYPE_1__*,int *) ;

__attribute__((used)) static void
joinlines(INPUT *F1, INPUT *F2)
{
 u_long cnt1, cnt2;






 if (F2 == ((void*)0)) {
  for (cnt1 = 0; cnt1 < F1->setcnt; ++cnt1)
   outoneline(F1, &F1->set[cnt1]);
  return;
 }
 for (cnt1 = 0; cnt1 < F1->setcnt; ++cnt1)
  for (cnt2 = 0; cnt2 < F2->setcnt; ++cnt2)
   outtwoline(F1, &F1->set[cnt1], F2, &F2->set[cnt2]);
}
