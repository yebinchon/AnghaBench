
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** errstr ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, errstr[3], getprogname());
 fprintf(stderr, "%s", errstr[4]);
 fprintf(stderr, "%s", errstr[5]);
 fprintf(stderr, "%s", errstr[6]);
 exit(2);
}
