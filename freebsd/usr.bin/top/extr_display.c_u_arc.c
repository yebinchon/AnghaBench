
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc_buffer ;
 int * arc_names ;
 int line_update (int ,char*,int ,int ) ;
 char* setup_buffer (char*,int ) ;
 int summary_format (char*,int*,int *) ;
 int x_arc ;
 int y_arc ;

void
u_arc(int *stats)
{
    static char *new = ((void*)0);

    new = setup_buffer(new, 0);

    if (arc_names == ((void*)0))
 return;


    summary_format(new, stats, arc_names);
    line_update(arc_buffer, new, x_arc, y_arc);
}
