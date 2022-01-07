
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ thread; } ;


 int Move_to (scalar_t__,int ) ;
 int assert (int) ;
 int digits (int) ;
 int lastline ;
 int line_update (int ,char*,int ,int ) ;
 int lprocstates ;
 int ltotal ;
 scalar_t__ memcmp (int ,int*,int) ;
 int memcpy (int ,int*,int) ;
 int num_procstates ;
 int printf (char*,...) ;
 int procstate_names ;
 int procstates_buffer ;
 TYPE_1__ ps ;
 int putchar (char) ;
 char* setup_buffer (char*,int ) ;
 int summary_format (char*,int*,int ) ;
 int x_brkdn ;
 scalar_t__ x_procstate ;
 int y_brkdn ;
 int y_procstate ;

void
u_procstates(int total, int *brkdn)
{
    static char *new = ((void*)0);
    int i;

    new = setup_buffer(new, 0);


    if (ltotal != total)
    {

 if (x_procstate == 0) {
     Move_to(x_procstate, y_procstate);
 }
 else {

     assert(lastline == 1);
 }
 printf("%d", total);


 if (digits(total) != digits(ltotal))
 {
     printf(" %s:", ps.thread ? "threads" : "processes");

     i = digits(total);
     while (i++ < (ps.thread ? 6 : 4))
     {
  putchar(' ');
     }

 }


 ltotal = total;
    }


    if (memcmp(lprocstates, brkdn, num_procstates * sizeof(int)) != 0)
    {

 summary_format(new, brkdn, procstate_names);
 line_update(procstates_buffer, new, x_brkdn, y_brkdn);
 memcpy(lprocstates, brkdn, num_procstates * sizeof(int));
    }
}
