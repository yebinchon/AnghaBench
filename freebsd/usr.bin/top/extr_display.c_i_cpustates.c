
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** cpustate_names ;
 int cpustates_column ;
 int lastline ;
 int lcpustates ;
 int memcpy (int ,int*,int) ;
 int num_cpus ;
 int num_cpustates ;
 int printf (char*,...) ;

void
i_cpustates(int *states)
{
    int i = 0;
    int value;
    const char * const *names;
    const char *thisname;
    int *hstates = states;
    int cpu;

for (cpu = 0; cpu < num_cpus; cpu++) {
    names = cpustate_names;


    if (num_cpus == 1)
 printf("\nCPU: ");
    else {
 value = printf("\nCPU %d: ", cpu);
 while (value++ <= cpustates_column)
  printf(" ");
    }
    lastline++;


    while ((thisname = *names++) != ((void*)0))
    {
 if (*thisname != '\0')
 {

     value = *states++;


     printf((value >= 1000 ? "%s%4.0f%% %s" : "%s%4.1f%% %s"),
     (i++ % num_cpustates) == 0 ? "" : ", ",
     ((float)value)/10.,
     thisname);
 }
    }
}


    states = hstates;
    memcpy(lcpustates, states, num_cpustates * sizeof(int) * num_cpus);
}
