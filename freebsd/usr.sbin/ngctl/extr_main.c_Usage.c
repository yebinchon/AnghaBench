
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static void
Usage(const char *msg)
{
 if (msg)
  warnx("%s", msg);
 fprintf(stderr,
  "usage: ngctl [-d] [-f file] [-n name] [command ...]\n");
 exit(EX_USAGE);
}
