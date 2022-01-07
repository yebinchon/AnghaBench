
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *argv0)
{
 fprintf(stderr, "%s: usage:\n\t%s [-l]\n", argv0, argv0);
 exit(EX_USAGE);
}
