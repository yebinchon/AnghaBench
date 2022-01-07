
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* cp_time; } ;


 int CPUSCALE ;
 int CPUSTATES ;
 int INSET ;
 TYPE_1__ cur_dev ;
 int histogram (double,int,int ) ;
 int wmove (int ,int,int ) ;
 int wnd ;

__attribute__((used)) static void
stat1(int row, int o)
{
 int i;
 double dtime;

 dtime = 0.0;
 for (i = 0; i < CPUSTATES; i++)
  dtime += cur_dev.cp_time[i];
 if (dtime == 0.0)
  dtime = 1.0;
 wmove(wnd, row, INSET);

 histogram(100.0 * cur_dev.cp_time[o] / dtime, 50, 0.5);
}
