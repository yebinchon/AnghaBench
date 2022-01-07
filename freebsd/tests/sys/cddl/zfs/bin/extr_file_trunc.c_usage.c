
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(char *execname)
{
 (void) fprintf(stderr,
     "usage: %s [-b blocksize] [-c count] [-f filesize]"
     " [-o offset] [-s seed] [-r] [-v] filename\n", execname);
 (void) exit(1);
}
