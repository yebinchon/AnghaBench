
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* __progname ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void) {

 fprintf(stderr, "Usage: %s [-cdilrt] ENCODING\n", __progname);
 exit(EXIT_FAILURE);
}
