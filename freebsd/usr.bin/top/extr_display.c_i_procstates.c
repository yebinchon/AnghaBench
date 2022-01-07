
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ thread; } ;


 int digits (int) ;
 int fputs (int ,int ) ;
 int lprocstates ;
 int ltotal ;
 int memcpy (int ,int*,int) ;
 int num_procstates ;
 int printf (char*,int,char*) ;
 int procstate_names ;
 int procstates_buffer ;
 TYPE_1__ ps ;
 int putchar (char) ;
 int setup_buffer (int ,int ) ;
 int stdout ;
 int summary_format (int ,int*,int ) ;

void
i_procstates(int total, int *brkdn)
{
    int i;

    procstates_buffer = setup_buffer(procstates_buffer, 0);


    printf("%d %s:", total, ps.thread ? "threads" : "processes");
    ltotal = total;


    i = digits(total);
    while (i++ < (ps.thread ? 6 : 4))
    {
 putchar(' ');
    }


    summary_format(procstates_buffer, brkdn, procstate_names);
    fputs(procstates_buffer, stdout);


    memcpy(lprocstates, brkdn, num_procstates * sizeof(int));
}
