
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int lastline ;
 char* setup_buffer (char*,int ) ;
 int stdout ;
 int summary_format (char*,int*,int *) ;
 char* swap_buffer ;
 int * swap_names ;

void
i_swap(int *stats)
{
    swap_buffer = setup_buffer(swap_buffer, 0);

    if (swap_names == ((void*)0))
     return;

    fputs("\nSwap: ", stdout);
    lastline++;


    summary_format(swap_buffer, stats, swap_names);
    fputs(swap_buffer, stdout);
}
