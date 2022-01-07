
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *name)
{
 (void)fprintf(stderr,
     "usage: %s [-[lo] offset[K|k|M|m|G|g|T|t]] [-r rfile] [-Nfqv] device ...\n",
     name);
 exit(EX_USAGE);
}
