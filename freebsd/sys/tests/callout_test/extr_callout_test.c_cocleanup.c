
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* co_array; } ;


 int MAXCPU ;
 int M_CALLTMP ;
 TYPE_1__** comaster ;
 int free (TYPE_1__*,int ) ;

__attribute__((used)) static void
cocleanup(void)
{
 int i;

 for (i = 0; i < MAXCPU; i++) {
  if (comaster[i]) {
   if (comaster[i]->co_array) {
    free(comaster[i]->co_array, M_CALLTMP);
    comaster[i]->co_array = ((void*)0);
   }
   free(comaster[i], M_CALLTMP);
   comaster[i] = ((void*)0);
  }
 }
}
