
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_WANTED ;
 int printf (char*,...) ;
 int trace_level ;

void
nscd_trace_out(const char *s, const char *f, int l)
{
 int i;

 --trace_level;
 if (trace_level < TRACE_WANTED)
 {
  for (i = 0; i < trace_level; ++i)
   printf("\t");

  printf("<= %s, %s: %d\n", s, f, l);
 }
}
