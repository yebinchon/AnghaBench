
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* arc_buffer ;
 int * arc_names ;
 int fputs (char*,int ) ;
 int lastline ;
 char* setup_buffer (char*,int ) ;
 int stdout ;
 int summary_format (char*,int*,int *) ;

void
i_arc(int *stats)
{
    arc_buffer = setup_buffer(arc_buffer, 0);

    if (arc_names == ((void*)0))
 return;

    fputs("\nARC: ", stdout);
    lastline++;


    summary_format(arc_buffer, stats, arc_names);
    fputs(arc_buffer, stdout);
}
