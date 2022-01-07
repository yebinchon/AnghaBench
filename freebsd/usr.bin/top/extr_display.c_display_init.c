
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statics {char** cpustate_names; int ncpus; int carc_names; int arc_names; int memory_names; int swap_names; int procstate_names; } ;


 int CPUSTATES ;
 int arc_names ;
 int assert (int) ;
 void* calloc (int,int) ;
 int carc_names ;
 int* cpustate_columns ;
 char** cpustate_names ;
 int cpustate_total_length ;
 int display_updatecpus (struct statics*) ;
 void* lcpustates ;
 void* lmemory ;
 void* lprocstates ;
 void* lswap ;
 int memory_names ;
 int num_cpustates ;
 int num_memory ;
 int num_procstates ;
 int num_swap ;
 int procstate_names ;
 int strlen (int ) ;
 int swap_names ;

int
display_init(struct statics * statics)
{
    int lines;
    const char * const *pp;
    int *ip;
    int i;

    lines = display_updatecpus(statics);


    if (lines > -1)
    {

 procstate_names = statics->procstate_names;
 num_procstates = 8;
 assert(num_procstates > 0);
 lprocstates = calloc(num_procstates, sizeof(int));

 cpustate_names = statics->cpustate_names;

 swap_names = statics->swap_names;
 num_swap = 7;
 assert(num_swap > 0);
 lswap = calloc(num_swap, sizeof(int));
 num_cpustates = CPUSTATES;
 assert(num_cpustates > 0);
 lcpustates = calloc(num_cpustates * sizeof(int), statics->ncpus);
 cpustate_columns = calloc(num_cpustates, sizeof(int));

 memory_names = statics->memory_names;
 num_memory = 7;
 assert(num_memory > 0);
 lmemory = calloc(num_memory, sizeof(int));

 arc_names = statics->arc_names;
 carc_names = statics->carc_names;


 cpustate_total_length = 0;
 pp = cpustate_names;
 ip = cpustate_columns;
 while (*pp != ((void*)0))
 {
     *ip++ = cpustate_total_length;
     if ((i = strlen(*pp++)) > 0)
     {
  cpustate_total_length += i + 8;
     }
 }
    }


    return(lines);
}
