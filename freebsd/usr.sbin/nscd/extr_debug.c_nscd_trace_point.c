
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_WANTED ;
 int printf (char*,...) ;
 int trace_level ;

void
nscd_trace_point(const char *f, int l)
{
 int i;

 if (trace_level < TRACE_WANTED)
 {
  for (i = 0; i < trace_level - 1; ++i)
   printf("\t");

  printf("= %s: %d\n", f, l);
 }
}
