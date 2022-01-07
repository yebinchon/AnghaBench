
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int line_update (int ,char*,int ,int ) ;
 int memory_buffer ;
 int memory_names ;
 char* setup_buffer (char*,int ) ;
 int summary_format (char*,int*,int ) ;
 int x_mem ;
 int y_mem ;

void
u_memory(int *stats)
{
    static char *new = ((void*)0);

    new = setup_buffer(new, 0);


    summary_format(new, stats, memory_names);
    line_update(memory_buffer, new, x_mem, y_mem);
}
