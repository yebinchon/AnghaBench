
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carc_buffer ;
 int * carc_names ;
 int line_update (int ,char*,int ,int ) ;
 char* setup_buffer (char*,int ) ;
 int summary_format (char*,int*,int *) ;
 int x_carc ;
 int y_carc ;

void
u_carc(int *stats)
{
    static char *new = ((void*)0);

    new = setup_buffer(new, 0);

    if (carc_names == ((void*)0))
 return;


    summary_format(new, stats, carc_names);
    line_update(carc_buffer, new, x_carc, y_carc);
}
