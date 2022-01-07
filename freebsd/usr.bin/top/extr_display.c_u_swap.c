
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int line_update (int ,char*,int ,int ) ;
 char* setup_buffer (char*,int ) ;
 int summary_format (char*,int*,int *) ;
 int swap_buffer ;
 int * swap_names ;
 int x_swap ;
 int y_swap ;

void
u_swap(int *stats)
{
    static char *new = ((void*)0);

    new = setup_buffer(new, 0);

    if (swap_names == ((void*)0))
     return;


    summary_format(new, stats, swap_names);
    line_update(swap_buffer, new, x_swap, y_swap);
}
