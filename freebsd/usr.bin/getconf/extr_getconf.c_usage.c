
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"usage: getconf -a [pathname]\n"
"       getconf [-v prog_env] system_var\n"
"       getconf [-v prog_env] path_var pathname\n");
 exit(EX_USAGE);
}
