
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int lastline ;
 char* memory_buffer ;
 int memory_names ;
 char* setup_buffer (char*,int ) ;
 int stdout ;
 int summary_format (char*,int*,int ) ;

void
i_memory(int *stats)
{
    memory_buffer = setup_buffer(memory_buffer, 0);

    fputs("\nMem: ", stdout);
    lastline++;


    summary_format(memory_buffer, stats, memory_names);
    fputs(memory_buffer, stdout);
}
