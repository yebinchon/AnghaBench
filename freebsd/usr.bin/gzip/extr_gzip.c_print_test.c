
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit_value ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*,char*,char*) ;
 int stderr ;
 int strlen (char const*) ;

__attribute__((used)) static void
print_test(const char *file, int ok)
{

 if (exit_value == 0 && ok == 0)
  exit_value = 1;
 fprintf(stderr, "%s:%s  %s\n", file,
     strlen(file) < 7 ? "\t\t" : "\t", ok ? "OK" : "NOT OK");
 fflush(stderr);
}
