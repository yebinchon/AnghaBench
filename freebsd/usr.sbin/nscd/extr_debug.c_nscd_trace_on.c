
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ trace_level ;
 scalar_t__ trace_level_bk ;

void
nscd_trace_on(void)
{
 trace_level = trace_level_bk;
 trace_level_bk = 0;
}
