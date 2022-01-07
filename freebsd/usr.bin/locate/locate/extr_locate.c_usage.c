
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_FCODES ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void
usage ()
{
        (void)fprintf(stderr,
 "usage: locate [-0Scims] [-l limit] [-d database] pattern ...\n\n");
        (void)fprintf(stderr,
 "default database: `%s' or $LOCATE_PATH\n", _PATH_FCODES);
        exit(1);
}
