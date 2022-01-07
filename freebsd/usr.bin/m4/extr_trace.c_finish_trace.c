
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_QUOTE ;
 int dump_buffer (int ,size_t) ;
 int fprintf (int ,char*,...) ;
 char* lquote ;
 char* rquote ;
 int trace_flags ;
 int traceout ;

void
finish_trace(size_t mark)
{
 fprintf(traceout, " -> ");
 if (trace_flags & TRACE_QUOTE)
  fprintf(traceout, "%s", lquote);
 dump_buffer(traceout, mark);
 if (trace_flags & TRACE_QUOTE)
  fprintf(traceout, "%s", rquote);
 fprintf(traceout, "\n");
}
