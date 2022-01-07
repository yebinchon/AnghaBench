
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statics {int ncpus; } ;


 int cpustates_column ;
 scalar_t__ digits (int) ;
 int display_resize () ;
 int* lcpustates ;
 int num_cpus ;
 int num_cpustates ;
 scalar_t__ pcpu_stats ;

int
display_updatecpus(struct statics *statics)
{
    int lines;
    int i;


    lines = display_resize();
    if (pcpu_stats)
  num_cpus = statics->ncpus;
    else
  num_cpus = 1;
    cpustates_column = 5;
    if (num_cpus > 1) {
  cpustates_column += 1 + digits(num_cpus);
 }


 for (i = 0; i < num_cpustates * num_cpus; ++i) {
  lcpustates[i] = -1;
    }

    return(lines);
}
