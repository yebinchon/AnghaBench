
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_WANTED ;
 int printf (char*,...) ;
 int trace_level ;

void
nscd_trace_int(const char *desc, int i, const char *f, int l)
{
 int j;

 if (trace_level < TRACE_WANTED)
 {
  for (j = 0; j < trace_level - 1; ++j)
   printf("\t");

  printf("= INT %s: %i, %s: %d\n",desc, i, f, l);
 }
}
