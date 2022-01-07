
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char const*,char*) ;
 scalar_t__ stderr ;
 scalar_t__ traceout ;

void
trace_file(const char *name)
{

 if (traceout && traceout != stderr)
  fclose(traceout);
 traceout = fopen(name, "w");
 if (!traceout)
  err(1, "can't open %s", name);
}
