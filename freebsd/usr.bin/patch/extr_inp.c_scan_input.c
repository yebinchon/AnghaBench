
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plan_a (char const*) ;
 int plan_b (char const*) ;
 int say (char*,char const*,char*) ;
 scalar_t__ using_plan_a ;
 scalar_t__ verbose ;

void
scan_input(const char *filename)
{
 if (!plan_a(filename))
  plan_b(filename);
 if (verbose) {
  say("Patching file %s using Plan %s...\n", filename,
      (using_plan_a ? "A" : "B"));
 }
}
