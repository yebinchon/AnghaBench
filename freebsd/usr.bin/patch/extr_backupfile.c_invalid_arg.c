
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
invalid_arg(const char *kind, const char *value, int problem)
{
 fprintf(stderr, "patch: ");
 if (problem == -1)
  fprintf(stderr, "invalid");
 else
  fprintf(stderr, "ambiguous");
 fprintf(stderr, " %s `%s'\n", kind, value);
}
