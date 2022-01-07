
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_definition {int type; char* defn; } ;


 int MACRTYPE ;
 int TYPEMASK ;
 int fprintf (scalar_t__,char*,char const*,char*) ;
 scalar_t__ mimic_gnu ;
 scalar_t__ stderr ;
 scalar_t__ traceout ;

__attribute__((used)) static void
dump_one_def(const char *name, struct macro_definition *p)
{
 if (!traceout)
  traceout = stderr;
 if (mimic_gnu) {
  if ((p->type & TYPEMASK) == MACRTYPE)
   fprintf(traceout, "%s:\t%s\n", name, p->defn);
  else {
   fprintf(traceout, "%s:\t<%s>\n", name, p->defn);
  }
 } else
  fprintf(traceout, "`%s'\t`%s'\n", name, p->defn);
}
