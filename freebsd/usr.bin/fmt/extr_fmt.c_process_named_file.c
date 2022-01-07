
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,char*) ;
 int n_errors ;
 int process_stream (int *,char const*) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
process_named_file(const char *name)
{
 FILE *f = fopen(name, "r");

 if (!f) {
  warn("%s", name);
  ++n_errors;
 } else {
  process_stream(f, name);
  if (ferror(f)) {
   warn("%s", name);
   ++n_errors;
  }
  fclose(f);
 }
}
