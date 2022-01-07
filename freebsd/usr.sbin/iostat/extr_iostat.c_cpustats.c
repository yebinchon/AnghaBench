
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* cp_time; } ;


 int CPUSTATES ;
 TYPE_1__ cur ;
 int printf (char*,double) ;
 double rint (int) ;

__attribute__((used)) static void
cpustats(void)
{
 int state;
 double cptime;

 cptime = 0.0;

 for (state = 0; state < CPUSTATES; ++state)
  cptime += cur.cp_time[state];
 for (state = 0; state < CPUSTATES; ++state)
  printf(" %2.0f",
         rint(100. * cur.cp_time[state] / (cptime ? cptime : 1)));
}
