
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** cpustate_names ;
 int cpustates_column ;
 int lastline ;
 int* lcpustates ;
 int num_cpus ;
 int num_cpustates ;
 int printf (char*,...) ;

void
z_cpustates(void)
{
    int i = 0;
    const char * const *names;
    const char *thisname;
    int cpu, value;

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
       printf("%s    %% %s", (i++ % num_cpustates) == 0 ? "" : ", ", thisname);
      }
     }
    }


 for (i = 0; i < num_cpustates * num_cpus; ++i) {
  lcpustates[i] = -1;
    }
}
