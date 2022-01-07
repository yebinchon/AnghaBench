
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int d_arc ;
 int d_carc ;
 int d_cpustates ;
 int d_header ;
 int d_loadave ;
 int d_memory ;
 int d_message ;
 int d_process ;
 int d_procstates ;
 int d_swap ;
 int i_arc ;
 int i_carc ;
 int i_cpustates ;
 int i_header ;
 int i_loadave ;
 int i_memory ;
 int i_message ;
 int i_process ;
 int i_procstates ;
 int i_swap ;

__attribute__((used)) static void
reset_display(void)
{
    d_loadave = i_loadave;
    d_procstates = i_procstates;
    d_cpustates = i_cpustates;
    d_memory = i_memory;
    d_arc = i_arc;
    d_carc = i_carc;
    d_swap = i_swap;
    d_message = i_message;
    d_header = i_header;
    d_process = i_process;
}
