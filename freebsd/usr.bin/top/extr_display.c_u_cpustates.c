
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Move_to (scalar_t__,scalar_t__) ;
 int* cpustate_columns ;
 char** cpustate_names ;
 scalar_t__ cpustates_column ;
 scalar_t__ lastline ;
 int* lcpustates ;
 int num_cpus ;
 int num_cpustates ;
 int printf (char*,double) ;
 scalar_t__ y_cpustates ;

void
u_cpustates(int *states)
{
    int value;
    const char * const *names;
    const char *thisname;
    int *hstates = states;
    int *lp;
    int *colp;
    int cpu;

for (cpu = 0; cpu < num_cpus; cpu++) {
    names = cpustate_names;

    Move_to(cpustates_column, y_cpustates + cpu);
    lastline = y_cpustates + cpu;
    lp = lcpustates + (cpu * num_cpustates);
    colp = cpustate_columns;


    while ((thisname = *names++) != ((void*)0))
    {
 if (*thisname != '\0')
 {

     if (*lp != *states)
     {

  Move_to(cpustates_column + *colp, y_cpustates + cpu);
  lastline = y_cpustates + cpu;


  value = *states;


  printf((value >= 1000 ? "%4.0f" : "%4.1f"),
         ((double)value)/10.);


  *lp = value;
     }
 }


 lp++;
 states++;
 colp++;
    }
}

    states = hstates;
}
