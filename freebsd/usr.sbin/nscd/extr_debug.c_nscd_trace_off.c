
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trace_level ;
 int trace_level_bk ;

void
nscd_trace_off(void)
{
 trace_level_bk = trace_level;
 trace_level = 1024;
}
