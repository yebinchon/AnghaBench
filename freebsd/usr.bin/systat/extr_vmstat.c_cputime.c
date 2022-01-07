
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* time; } ;


 int CPUSTATES ;
 TYPE_1__ s ;

__attribute__((used)) static float
cputime(int indx)
{
 double lt;
 int i;

 lt = 0;
 for (i = 0; i < CPUSTATES; i++)
  lt += s.time[i];
 if (lt == 0.0)
  lt = 1.0;
 return (s.time[indx] * 100.0 / lt);
}
